package com.uet.mtbs.configuration;

import com.uet.mtbs.model.Movie;
import com.uet.mtbs.service.MovieService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import java.util.List;
import java.util.Properties;

@Configuration
public class AllConfig {

    @Bean
    public JavaMailSender getJavaMailSender() {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost("smtp.gmail.com");
        mailSender.setPort(587);

        mailSender.setUsername("vailinhhon098@gmail.com");
        mailSender.setPassword("uoqoxkljejjxdvms");

        Properties props = mailSender.getJavaMailProperties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.debug", "true");
        props.put("mail.smtp.ssl.protocols", "TLSv1.2");

        return mailSender;
    }

    @Bean
    public MovieService getMovieService() {
        return new MovieService() {
            @Override
            public List<Movie> getAllMovies(Movie movie) {
                return null;
            }

            @Override
            public Iterable<Movie> getMovieById(Long movie_id) {
                return null;
            }

            @Override
            public void addMovie(Movie movie) {

            }

            @Override
            public void updateUserByName(Movie movie, String movie_name) {

            }

            @Override
            public void deleteUserByName(String movie_name) {

            }
        };
    }

}
