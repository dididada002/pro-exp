package com.pro.exp.service.vue.impl;

import com.google.common.collect.Lists;
import com.pro.exp.dao.entity.*;
import com.pro.exp.dao.interfaces.VueIconMapper;
import com.pro.exp.dao.interfaces.VueRecommendMapper;
import com.pro.exp.dao.interfaces.VueSwiperMapper;
import com.pro.exp.dao.interfaces.VueWeekendMapper;
import com.pro.exp.model.vue.*;
import com.pro.exp.service.vue.interfaces.VueFirstPageService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author: jingteng
 * @date: 2019/11/14 22:25
 */
@Service
public class VueFirstPageServiceImpl implements VueFirstPageService {

    @Autowired
    private VueSwiperMapper swiperMapper;

    @Autowired
    private VueRecommendMapper recommendMapper;

    @Autowired
    private VueIconMapper iconMapper;

    @Autowired
    private VueWeekendMapper weekendMapper;

    @Override
    public FirstVueResponse getFirstPageMsg() {
        FirstVueResponse response = new FirstVueResponse();
        List<IconResponse> iconList = Lists.newArrayList();
        VueIconExample iconExample = new VueIconExample();
        iconExample.setOrderByClause("sort_index ASC");
        List<VueIcon> vueIcons = iconMapper.selectByExample(iconExample);
        if (vueIcons != null) {
            vueIcons.forEach(item -> {
                IconResponse iconResponse = new IconResponse();
                BeanUtils.copyProperties(item,iconResponse);
                iconList.add(iconResponse);
            });
        }


        List<RecommendResponse> recommendList = Lists.newArrayList();
        VueRecommendExample recommendExample = new VueRecommendExample();
        recommendExample.setOrderByClause("sort_index ASC");
        List<VueRecommend> vueRecommends = recommendMapper.selectByExample(recommendExample);
        if (vueRecommends != null) {
            vueRecommends.forEach(item -> {
                RecommendResponse recommendResponse = new RecommendResponse();
                BeanUtils.copyProperties(item,recommendResponse);
                recommendResponse.setDesc(item.getDescTxt());
                recommendList.add(recommendResponse);
            });
        }

        List<SwiperResponse> swiperList = Lists.newArrayList();
        VueSwiperExample swiperExample = new VueSwiperExample();
        swiperExample.setOrderByClause("sort_index ASC");
        List<VueSwiper> vueSwipers = swiperMapper.selectByExample(swiperExample);
        if (vueSwipers != null) {
            vueSwipers.forEach(item -> {
                SwiperResponse swiperResponse = new SwiperResponse();
                BeanUtils.copyProperties(item,swiperResponse);
                swiperList.add(swiperResponse);
            });
        }

        List<WeekendResponse> weekendList = Lists.newArrayList();
        VueWeekendExample weekendExample = new VueWeekendExample();
        weekendExample.setOrderByClause("sort_index ASC");
        List<VueWeekend> vueWeekends = weekendMapper.selectByExample(weekendExample);
        if (vueWeekends != null) {
            vueWeekends.forEach(item -> {
                WeekendResponse weekendResponse = new WeekendResponse();
                BeanUtils.copyProperties(item,weekendResponse);
                weekendResponse.setDesc(item.getDescTxt());
                weekendList.add(weekendResponse);
            });
        }


        response.setIconList(iconList);
        response.setRecommendList(recommendList);
        response.setSwiperList(swiperList);
        response.setWeekendList(weekendList);
        response.setCity("城市");
        return response;
    }
}
