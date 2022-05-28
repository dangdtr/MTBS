package com.example.springlogin.service.Impl;

import com.example.springlogin.model.User;
import com.example.springlogin.repository.UserRepository;
import com.example.springlogin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Primary
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;

    @Override
    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

    @Override
    public User getUserById(Long user_id) {
        return userRepository.findById(user_id).orElseThrow(
                () -> new RuntimeException("Cannot find by id: " + user_id));
    }

    @Override
    public void addUser(User user) {
        userRepository.save(user);
    }

    @Override
    public void updateUserById(User newUser, Long user_id) {
        userRepository.findById(user_id).map(
                user -> {
                    user.setUser_id(newUser.getUser_id());
                    user.setFirst_name(newUser.getFirst_name());
                    user.setLast_name(newUser.getLast_name());
                    user.setPhone(newUser.getPhone());
                    user.setEmail(newUser.getEmail());
                    user.setDate_of_birth(newUser.getDate_of_birth());
                    return userRepository.save(user);
                }).orElseGet(
                () -> {
                    newUser.setUser_id(user_id);
                    return userRepository.save(newUser);
                }
        );
    }

    @Override
    public void deleteUserById(Long user_id) {
        if(userRepository.existsById(user_id)) {
            userRepository.deleteById(user_id);
        }
    }
}
