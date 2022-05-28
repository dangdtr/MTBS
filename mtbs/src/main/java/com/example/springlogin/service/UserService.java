package com.example.springlogin.service;

import com.example.springlogin.model.Account;
import com.example.springlogin.model.User;

import java.util.List;

public interface UserService {
    List<User> getAllUsers();

    User getUserById(Long user_id);

    void addUser(User user);

    void updateUserById(User user, Long user_id);

    void deleteUserById(Long user_id);
}
