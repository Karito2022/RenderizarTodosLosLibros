package com.karitoreyes.project.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.karitoreyes.project.models.Book;
import com.karitoreyes.project.services.BookService;

@Controller
@RequestMapping("/books")
public class BookController {
	@Autowired
	BookService bookservice;
	
	@RequestMapping("")
	public String books(Model model) {
		List<Book> books = bookservice.allBooks();
		model.addAttribute("books", books);
        return "index.jsp";
    }
	
	@RequestMapping("/{id}")
	public String bookbyid(Model model, @PathVariable("id") Long id) {
		Book book = bookservice.findBook(id);
		model.addAttribute("book", book);
        return "bookinfo.jsp";
    }
}