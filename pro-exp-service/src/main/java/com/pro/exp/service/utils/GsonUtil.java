package com.pro.exp.service.utils;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;

import java.lang.reflect.Type;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class GsonUtil {

    private static Gson gson;
    static {
        GsonBuilder gb = new GsonBuilder();
        gb.registerTypeAdapter(Date.class,new DateSerializer()).setDateFormat(1);
        gb.registerTypeAdapter(Date.class,new DateDeserializer()).setDateFormat(1);
        gb.serializeNulls().enableComplexMapKeySerialization();
        gson = gb.create();
    }
    public static String toJson(Object object)
    {
        return gson.toJson(object);
    }

    public static <T> T toBean(String json, Class<T> clz)
    {
        return (T)gson.fromJson(json, clz);
    }

    public static Map<String, String> toStringMap(String json)
    {
        Type type = new TypeToken() {}.getType();
        return (Map)gson.fromJson(json, type);
    }

    public static <T> List<T> toList(String json, Class<T> clz)
    {
        if ((clz.isPrimitive()) || (clz.isInstance(""))) {
            return (List)toBean(json, List.class);
        }
        return (List)gson.fromJson(json, clz);
    }
}





















