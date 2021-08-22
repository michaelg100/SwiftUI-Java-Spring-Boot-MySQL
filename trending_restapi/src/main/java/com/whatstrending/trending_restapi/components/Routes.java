package com.whatstrending.trending_restapi.components;

import com.whatstrending.trending_restapi.repository.BookRepository;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.whatstrending.trending_restapi.model.Book;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@CrossOrigin(origins = "http://localhost", maxAge = 3600)
@RestController
public class Routes {

    @Autowired
    private BookRepository bookRepository;

    @RequestMapping("/")
    public String gettest(){
        return "this is the test";
    }

    @RequestMapping("/t")
    public Map<String, String> sayHello() {
        HashMap<String, String> map = new HashMap<>();
        map.put("title", "this is the title");
        map.put("author", "jk rowling");
        map.put("email", "bob@gmail.com");
        return map;
    }

    @RequestMapping("/b")
    public ArrayList getBooks(){
        ArrayList list = new ArrayList();
        HashMap mMap = new HashMap();
        mMap.put("title", "Chamber of Secrets");
        mMap.put("author", "JK Rowling");
        mMap.put("email", "jk@gmail.com");
        list.add(mMap);
        mMap = new HashMap(); // create a new one!
        mMap.put("title", "Goblet fo Fire");
        mMap.put("author", "JK Rowling");
        mMap.put("email", "jk@gmail.com");
        list.add(mMap);
        return list;
    }

    @GetMapping(path="/all")
    public @ResponseBody Iterable<Book> getAllBooks() {
        // This returns a JSON or XML with the users
        return bookRepository.findAll();
    }

}
