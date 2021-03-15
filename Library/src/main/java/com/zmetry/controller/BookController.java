package com.zmetry.controller;

import com.zmetry.pojo.Books;
import com.zmetry.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    @Qualifier("BookSerciceImpl")
    private BookService bookService;

    //查询所有书籍
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> booksList = bookService.queryAllBooks();
        model.addAttribute("booksList",booksList);
        return "allbook";
    }

    @RequestMapping("/toAddPaper")
    public String toAddPaper(){
        return "addBook";
    }

    @RequestMapping("/addBook")
    public String addBook(Books books){
        System.out.println(books);
        bookService.addBook(books);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/toUpdate")
    public String toUpdatePaper(int bookID,Model model){
        Books QueryBook = bookService.queryBookById(bookID);
        model.addAttribute("QueryBook",QueryBook);
        return "updateBook";
    }

    @RequestMapping("/updateBook")
    public String updateBook(Books book){
        bookService.updateBook(book);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/deleteBook/{bookID}")
    public String DeleteBook(@PathVariable("bookID") int bookID, Model model){
        bookService.deleteBookById(bookID);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/queryBookByName")
    public String queryBookByName(String bookName,Model model){
        List<Books> booksList = bookService.queryBookByName(bookName);
        model.addAttribute("booksList",booksList);
        return "allbook";
    }

}
