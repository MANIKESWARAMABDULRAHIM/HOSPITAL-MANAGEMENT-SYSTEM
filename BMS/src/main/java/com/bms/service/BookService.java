package com.bms.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bms.model.Book;
import com.bms.repository.BookRepository;

@Service
public class BookService {

    private BookRepository repository;

    public BookService(BookRepository repository) {
        this.repository = repository;
    }

    public Book saveBook(Book book) {
        return repository.save(book);
    }

    public List<Book> getAllBooks() {
        return repository.findAll();
    }

    public Book searchBook(Integer id) {
        return repository.findById(id).orElse(new Book());
    }

    public void deleteBook(Integer id) {
        repository.deleteById(id);
    }
}