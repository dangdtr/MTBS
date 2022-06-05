package com.uet.mtbs.controller;

import com.uet.mtbs.database.DatabaseConnection;
import com.uet.mtbs.model.Account;
import com.uet.mtbs.model.User;
import com.uet.mtbs.service.AccountService;
import com.uet.mtbs.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import java.sql.*;

@Controller
public class AccountRegister {
    @Autowired
    private UserService userService;

    @Autowired
    private AccountService accountService;

    @GetMapping("/create")
    public String showAccount(Model model) {
        return "create";
    }

    @PostMapping("/create")
    public String createAccount(HttpServletRequest request) throws SQLException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String firstName = request.getParameter("first_name");
        String lastName = request.getParameter("last_name");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String dateOfBirth = request.getParameter("date_of_birth");

        if(username.isEmpty() || password.isEmpty() || firstName.isEmpty() || lastName.isEmpty()
                || phone.isEmpty() || email.isEmpty() || dateOfBirth.isEmpty()) {
            return "createfailed"; // create error
        }

        ResultSet resultSet = DatabaseConnection.connect("select * from account");

        try {
            while(resultSet.next()) {
                if(username.equals(resultSet.getString("username")))
                    return "createfailed"; // duplicate username
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        User user = new User(firstName, lastName, phone, email, dateOfBirth);
        Account account = new Account(username, password, "active");

        user.setAccount(account);
        account.setUser(user);
        accountService.addAccount(account);
        userService.addUser(user);

        return "createsuccess";
    }

    @PostMapping("/goToHome")
    public String goToHome() {
        return "index";
    }
}
