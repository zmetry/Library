package com.zmetry.service;

import com.zmetry.dao.BookMapper;
import com.zmetry.pojo.Books;

import java.util.List;

public class BookSerciceImpl implements BookService{
    //service层调dao层
    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    @Override
    public int addBook(Books book) {
        return bookMapper.addBook(book);
    }

    @Override
    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    @Override
    public int updateBook(Books book) {
        return bookMapper.updateBook(book);
    }

    @Override
    public Books queryBookById(int id) {
        return bookMapper.queryBookById(id);
    }

    @Override
    public List<Books> queryAllBooks() {
        return bookMapper.queryAllBooks();
    }

    @Override
    public List<Books> queryBookByName(String bookName) {return bookMapper.queryBookByName(bookName);}
}
