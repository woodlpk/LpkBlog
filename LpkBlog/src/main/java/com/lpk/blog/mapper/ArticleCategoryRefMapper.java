package com.lpk.blog.mapper;

import com.lpk.blog.pojo.ArticleCategoryRef;

public interface ArticleCategoryRefMapper {
    int insert(ArticleCategoryRef record);

    int insertSelective(ArticleCategoryRef record);
}