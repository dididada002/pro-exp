package com.pro.exp.service.impl;

import com.google.common.collect.Maps;
import com.pro.exp.service.RedisService;
import com.pro.exp.service.utils.GsonUtil;
import com.pro.exp.service.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.serializer.RedisSerializer;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/17 23:39
 */
@Service
public class RedisServiceImpl implements RedisService {
    @Value("${project.no}")
    private String projectNo;

    @Value("${spring.profiles.active}")
    private String active;

    @Autowired
    private StringRedisTemplate redisTemplate;

    /**
     * 包装原始Key
     *
     * @param originalKey
     * @return
     */
    private String packKey(String originalKey) {
        String finalKey = originalKey;
        if (!finalKey.startsWith(projectNo)) {
            finalKey = new StringBuilder()
                    .append(projectNo).append(":")
                    .append(active).append(":")
                    .append(originalKey).toString();
        }
        return finalKey;
    }

    @Override
    public boolean set(final String key, final String value, final long expire) {
        if (expire <= 0) {
            throw new RuntimeException("必须设置合法的过期时间");
        }
        boolean result = redisTemplate.execute(connection -> {
            RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
            connection.setEx(serializer.serialize(packKey(key)), expire, serializer.serialize(value));
            return true;
        }, true);
        return result;
    }

    @Override
    public String get(final String key) {
        String result = redisTemplate.execute(connection -> {
            RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
            byte[] value = connection.get(serializer.serialize(packKey(key)));
            return serializer.deserialize(value);
        }, true);
        return result;
    }

    @Override
    public boolean delete(final String key) {
        return redisTemplate.execute(connection -> {
            RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
            connection.del(serializer.serialize(packKey(key)));
            return true;
        }, true);
    }

    @Override
    public Long getExpire(final String key) {
        return redisTemplate.execute(connection -> {
            RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
            try {
                return connection.pTtl(serializer.serialize(packKey(key)), TimeUnit.SECONDS);
            } catch (Exception e) {
                // Driver may not support pTtl or we may be running on Redis 2.4
                return connection.ttl(serializer.serialize(packKey(key)), TimeUnit.SECONDS);
            }
        }, true);
    }

    @Override
    public boolean expire(final String key, final long expire) {
        if (expire <= 0) {
            throw new RuntimeException("必须设置合法的过期时间");
        }
        return redisTemplate.execute(connection -> {
            RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
            try {
                return connection.pExpire(serializer.serialize(packKey(key)), expire * 1000);
            } catch (Exception e) {
                // Driver may not support pExpire or we may be running on Redis 2.4
                return connection.expire(serializer.serialize(packKey(key)), expire * 1000);
            }
        }, true);
    }

    @Override
    public <T> boolean setList(final String key, final List<T> list, long expire) {
        if (expire <= 0) {
            throw new RuntimeException("必须设置合法的过期时间");
        }
        return set(packKey(key), GsonUtil.toJson(list), expire);
    }

    @Override
    public <T> List<T> getList(final String key, final Class<T> clz) {
        String json = get(packKey(key));
        if (StringUtils.isNotEmpty(json)) {
            List<T> list = GsonUtil.toList(json, clz);
            return list;
        }
        return null;
    }

    @Override
    public long leftPush(final String key, final Object obj) {
        final String value = GsonUtil.toJson(obj);
        long result = redisTemplate.execute(connection -> {
            RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
            long count = connection.lPush(serializer.serialize(packKey(key)), serializer.serialize(value));
            return count;
        }, true);
        return result;
    }

    @Override
    public long rightPush(final String key, final Object obj) {
        final String value = GsonUtil.toJson(obj);
        long result = redisTemplate.execute(connection -> {
            RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
            long count = connection.rPush(serializer.serialize(packKey(key)), serializer.serialize(value));
            return count;
        }, true);
        return result;
    }

    @Override
    public String leftPop(final String key) {
        String result = redisTemplate.execute(connection -> {
            RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
            byte[] res = connection.lPop(serializer.serialize(packKey(key)));
            return serializer.deserialize(res);
        }, true);
        return result;
    }

    @Override
    public String rightPop(final String key) {
        String result = redisTemplate.execute(connection -> {
            RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
            byte[] res = connection.rPop(serializer.serialize(packKey(key)));
            return serializer.deserialize(res);
        }, true);
        return result;
    }

    @Override
    public boolean setHash(String key, String hashKey, String hashValue, long expire) {
        if (expire <= 0) {
            throw new RuntimeException("必须设置合法的过期时间");
        }
        boolean result = redisTemplate.execute(connection -> {
            RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
            connection.hSet(serializer.serialize(packKey(key)), serializer.serialize(hashKey), serializer.serialize(hashValue));
            connection.expire(serializer.serialize(packKey(key)), expire);
            return true;
        }, true);
        return result;
    }

    @Override
    public Map<String, String> getHash(String key) {
        Map<String, String> result = redisTemplate.execute(connection -> {
            RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
            Map<byte[], byte[]> map = connection.hGetAll(serializer.serialize(packKey(key)));
            Map<String, String> hashMap = Maps.newHashMap();
            map.forEach((k, v) -> hashMap.put(serializer.deserialize(k), serializer.deserialize(v)));
            return hashMap;
        }, true);
        return result;
    }

    @Override
    public String getHashValue(String key, String hashKey) {
        String result = redisTemplate.execute(connection -> {
            RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
            byte[] value = connection.hGet(serializer.serialize(packKey(key)), serializer.serialize(hashKey));
            return serializer.deserialize(value);
        }, true);
        return result;
    }

    @Override
    public boolean lock(String key, long expire) {
        if (expire <= 0) {
            throw new RuntimeException("必须设置合法的过期时间");
        }
        boolean result = redisTemplate.execute(connection -> {
            RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
            String value = String.valueOf(expire);
            boolean flag = connection.setNX(serializer.serialize(packKey(key)), serializer.serialize(value));
            if (flag) {
                connection.setEx(serializer.serialize(packKey(key)), expire, serializer.serialize(value));
            }
            return flag;
        }, true);
        return result;

    }

    @Override
    public boolean unlock(String key) {
        boolean result = redisTemplate.execute(connection -> {
            RedisSerializer<String> serializer = redisTemplate.getStringSerializer();
            connection.del(serializer.serialize(packKey(key)));
            return true;
        }, true);
        return result;
    }
}
