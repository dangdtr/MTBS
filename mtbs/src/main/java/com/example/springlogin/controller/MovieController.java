package com.example.springlogin.controller;

import com.example.springlogin.database.CheckLogged;
import com.example.springlogin.database.DatabaseConnection;
import com.example.springlogin.model.Movie;
import com.example.springlogin.repository.MovieRepository;
import com.example.springlogin.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.script.*;
//import javax.script.ScriptEngine;
//import javax.script.ScriptEngineManager;
//import javax.script.ScriptException;
import javax.servlet.http.HttpServletRequest;
import javax.xml.crypto.Data;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.sql.ResultSet;
import java.sql.SQLException;

@Controller
//@RequestMapping(path = "movie")
public class MovieController {
    @Autowired
    private MovieService movieService;

    @Autowired
    private MovieRepository movieRepository;

    @GetMapping("/add_movie")
    public String get() {
        return "add_movie";
    }

    @PostMapping("/add_movie")
    public String addMovie(HttpServletRequest request) {
        String movie_name = request.getParameter("movie_name");
        String movie_poster_url = request.getParameter("movie_poster_url");
        String movie_trailer_url = request.getParameter("movie_trailer_url");
        String movie_duration = request.getParameter("movie_duration");
        String movie_genre = request.getParameter("movie_genre");
        String director = request.getParameter("director");
        String producer = request.getParameter("producer");
        String cast = request.getParameter("cast");
        String description = request.getParameter("description");

        Movie movie = new Movie(movie_name, movie_poster_url, movie_trailer_url, movie_duration,
                movie_genre, director, producer, cast, description);

        movieService.addMovie(movie);

        return "add_movie_success";
    }

    @GetMapping("/moviedetails/{movie_id}")
    public String getMovieDetail(ModelMap modelMap, @PathVariable Long movie_id) {
        Iterable<Movie> movies = movieService.getMovieById(movie_id);
        modelMap.addAttribute("movies", movies);
        return "moviedetails";
    }

    @PostMapping("/payment")
    public String payment() {
//        ScriptEngineManager manager = new ScriptEngineManager(null);
//        ScriptEngine engine = manager.getEngineByName("JavaScript");
//        try {
//            engine.eval(new FileReader("E:\\mtbs\\mtbs\\src\\main\\webapp\\assets\\javascript\\booking.js"));
////            Invocable invocable = (Invocable) engine;
////            CheckLogged.TOTAL_PRICE = (String) invocable.invokeFunction("updateSelectedCount");
//            CheckLogged.TOTAL_PRICE = String.valueOf(engine.get("value").toString());
//        } catch (ScriptException | FileNotFoundException e) {
//            e.printStackTrace();
//        }
        return "payment";
    }

    @GetMapping("/search")
    public String searchMovie(ModelMap modelMap, HttpServletRequest request) throws SQLException {
        String movie_name = request.getParameter("search-text");

        ResultSet resultSet = DatabaseConnection.connect("SELECT * FROM movie WHERE movie_name = " + movie_name);

        if(resultSet.next()) {
            modelMap.addAttribute("searched_movie", resultSet);
            return "moviedetails_searched";
        }

        return "logged_index";
    }
}
