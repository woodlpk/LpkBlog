package com.lpk.blog.mapper;

import com.lpk.blog.pojo.ArticleTagRefKey;

public interface ArticleTagRefMapper {
    int deleteByPrimaryKey(ArticleTagRefKey key);

    int insert(ArticleTagRefKey record);

    int insertSelective(ArticleTagRefKey record);
}