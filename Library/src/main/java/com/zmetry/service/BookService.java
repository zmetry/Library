package com.zmetry.service;

import com.zmetry.pojo.Books;

import java.util.List;

public interface BookService {
    //增加一本书
    int addBook(Books book);
    //删除一本书
    int deleteBookById(int id);
    //更新一本书
    int updateBook(Books book);
    //查询一本书
    Books queryBookById(int id);
    //查询所有的书
    List<Books> queryAllBooks();
    //根据名字查找
    List<Books> queryBookByName(String bookName);

}
