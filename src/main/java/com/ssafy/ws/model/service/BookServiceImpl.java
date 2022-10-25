package com.ssafy.ws.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.ws.model.dao.BookDao;
import com.ssafy.ws.model.dto.Book;

@Service
public class BookServiceImpl implements BookService {
	
	@Autowired
	BookDao dao;
	
//	@Autowired
//	SqlSession sqlSession;

//	public BookServiceImpl(BookDao dao) {
//		this.dao = dao;
//	}

	
	@Override
	public int add(Book book) throws Exception {
		return dao.insert(book);
//		return sqlSession.insert("insert",book);
	}

	@Override
	public List<Book> findAll() throws Exception {
		return dao.selectAll();
	}

}
