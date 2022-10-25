package com.ssafy.ws.model.service;

import java.util.List;

import com.ssafy.ws.model.dto.Book;

public interface BookService {

	public int add(Book book) throws Exception;
	public List<Book> findAll() throws Exception;
}
