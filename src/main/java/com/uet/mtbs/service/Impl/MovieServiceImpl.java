package com.uet.mtbs.service.Impl;

import com.uet.mtbs.model.Movie;
import com.uet.mtbs.repository.MovieRepository;
import com.uet.mtbs.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
@Primary
public class MovieServiceImpl implements MovieService {
    @Autowired
    private MovieRepository movieRepository;

    @Override
    public void addMovie(Movie movie) {
        movieRepository.save(movie);
    }

    @Override
    public List<Movie> getAllMovies(Movie movie) {
        return null;
    }

    @Override
    public Iterable<Movie> getMovieById(Long movie_id) {
        return Collections.singleton(movieRepository.findById(movie_id).orElseThrow(
                () -> new RuntimeException("Cannot find by id: " + movie_id)));
    }

    @Override
    public void updateUserByName(Movie movie, String movie_name) {

    }

    @Override
    public void deleteUserByName(String movie_name) {

    }

    public MovieRepository getMovieRepository() {
        return movieRepository;
    }
}
