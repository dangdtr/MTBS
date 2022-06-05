//package com.example.springlogin.controller;
//
//import com.example.springlogin.model.Account;
//import com.example.springlogin.model.User;
//import com.example.springlogin.service.AccountService;
//import com.example.springlogin.service.UserService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.*;
//
//import java.util.List;
//
//@RestController
//@RequestMapping(path = "account")
//public class AccountController {
//    @Autowired
//    private AccountService accountService;
//    @Autowired
//    private UserService userService;
//
////    @Autowired
////    public AccountController(AccountService accountService, UserService userService) {
////        this.accountService = accountService;
////        this.userService = userService;
////    }
//
//    @GetMapping("getAll")
//    public List<Account> getAllAccounts() {
//        return accountService.getAllAccounts();
//    }
//
//    @GetMapping("get/{id}")
//    public Account getAccountById(@PathVariable Long id) {
//        return accountService.getAccountById(id);
//    }
//
//    @PostMapping("create")
//    public void addAccount(@RequestBody Account newAccount) {
//        User newUser = newAccount.getUser();
//        newUser.setAccount(newAccount);
//        newAccount.setUser(newUser);
//        accountService.addAccount(newAccount);
//        userService.addUser(newUser);
//    }
//
//    @PutMapping("update/{id}")
//    public void updateAccount(@RequestBody Account newAccount, @PathVariable Long id) {
//        accountService.updateAccountById(newAccount, id);
//    }
//
//    @DeleteMapping("delete/{id}")
//    public void deleteAccountById(@PathVariable Long id) {
//        accountService.deleteAccountById(id);
//    }
//}
