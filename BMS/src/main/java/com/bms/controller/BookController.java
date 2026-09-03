package com.bms.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bms.model.Book;
import com.bms.service.BookService;

@RestController
@RequestMapping("/api/books")
public class BookController {

    private BookService service;

    public BookController(BookService service) {
        this.service = service;
    }

    @PostMapping
    public ResponseEntity<?> saveBook(@RequestBody Book book) {

        Book obj = service.saveBook(book);

        if (obj != null) {
            return new ResponseEntity<>(
                    "Book added successfully...",
                    HttpStatus.CREATED);
        } else {
            return new ResponseEntity<>(
                    "Error adding book...",
                    HttpStatus.BAD_REQUEST);
        }
    }

    @GetMapping
    public ResponseEntity<?> getAllBooks() {

        List<Book> bookList = service.getAllBooks();

        if (bookList.size() == 0) {
            return new ResponseEntity<>(
                    "Sorry no books found...",
                    HttpStatus.NOT_FOUND);
        } else {
            return new ResponseEntity<>(
                    bookList,
                    HttpStatus.OK);
        }
    }

    @GetMapping("/{id}")
    public ResponseEntity<?> searchBook(
            @PathVariable Integer id) {

        Book book = service.searchBook(id);

        if (book.getId() != null) {
            return new ResponseEntity<>(
                    book,
                    HttpStatus.OK);
        } else {
            return new ResponseEntity<>(
                    "Invalid book id...",
                    HttpStatus.NOT_FOUND);
        }
    }

    @PutMapping
    public ResponseEntity<?> updateBook(
            @RequestBody Book book) {

        Book obj = service.searchBook(book.getId());

        if (obj.getId() != null) {

            service.saveBook(book);

            return new ResponseEntity<>(
                    "Book updated successfully...",
                    HttpStatus.OK);

        } else {

            return new ResponseEntity<>(
                    "Invalid book id...",
                    HttpStatus.BAD_REQUEST);
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<?> deleteBook(
            @PathVariable Integer id) {

        Book book = service.searchBook(id);

        if (book.getId() != null) {

            service.deleteBook(id);

            return new ResponseEntity<>(
                    "Book deleted successfully...",
                    HttpStatus.OK);

        } else {

            return new ResponseEntity<>(
                    "Invalid book id...",
                    HttpStatus.BAD_REQUEST);
        }
    }
}