//package com.example.springlogin.controller;
//
//import com.example.springlogin.model.Account;
//import com.example.springlogin.model.User;
//import com.example.springlogin.service.UserService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Repository;
//import org.springframework.web.bind.annotation.*;
//
//import java.util.List;
//
//@RestController
//@RequestMapping(path = "user")
//public class UserController {
//    private final UserService userService;
//
//    @Autowired
//    public UserController(UserService userService) {
//        this.userService = userService;
//    }
//
//    @GetMapping("getAll")
//    public List<User> getAllUsers() {
//        return userService.getAllUsers();
//    }
//
//    @GetMapping("get/{id}")
//    public User getUserById(@PathVariable Long user_id) {
//        return userService.getUserById(user_id);
//    }
//
//    @PostMapping("create")
//    public void addUser(@RequestBody User newUser) {
//        userService.addUser(newUser);
//    }
//
//    @PutMapping("update/{id}")
//    public void updateUser(@RequestBody User newUser, @PathVariable Long user_id) {
//        userService.updateUserById(newUser, user_id);
//    }
//
//    @DeleteMapping("delete/{id}")
//    public void deleteUserById(@PathVariable Long user_id) { userService.deleteUserById(user_id);
//    }
//}
