package com.whatstrending.trending_restapi.repository;

import org.springframework.data.repository.CrudRepository;

import com.whatstrending.trending_restapi.model.Book;

public interface BookRepository extends CrudRepository<Book, Integer>{

}
