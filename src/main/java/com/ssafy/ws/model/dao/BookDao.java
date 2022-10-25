package com.ssafy.ws.model.dao;

import java.util.List;

import com.ssafy.ws.model.dto.Book;

public interface BookDao {
	
	int insert(Book book);
	List<Book> selectAll();


}
