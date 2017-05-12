package com.game.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.game.dao.CategoryDao;
import com.game.model.Category;

@Service
public class CategoryServiceImpl implements CategoryService {
@Autowired
	private CategoryDao categoryDao;

	public List<Category> getCategories(){
		return categoryDao.getCategories();
	}

}
