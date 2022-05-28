package com.example.springlogin.controller;

import com.example.springlogin.database.CheckLogged;
import com.example.springlogin.database.DatabaseConnection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import java.sql.*;

@Controller
public class AccountLogin {
    @Autowired
    private JavaMailSender mailSender;

    @GetMapping("/login")
    public String showAccount(ModelMap model) {
        return "login";
    }

    @PostMapping("/login")
    public String login(HttpServletRequest request) throws SQLException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if(username.isEmpty() || password.isEmpty())
            return "login";

        ResultSet resultSet = DatabaseConnection.connect("select * from account");

        try {
            while(resultSet.next()) {
                if(username.equals(resultSet.getString("username"))) {
                    if(password.equals(resultSet.getString("password"))) {
                        CheckLogged.setLoggedStatus(true);
                        CheckLogged.setLoggedUsername(username);
                        return "logged_index";
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "login";
    }

    @PostMapping("/logout")
    public String logout() {
        CheckLogged.setLoggedUsername("");
        CheckLogged.setLoggedStatus(false);
        return "index";
    }

    @PostMapping("/change_password")
    public String changePassword(HttpServletRequest request) throws SQLException {
        String password = request.getParameter("password");
        String new_password = request.getParameter("new_password");
        String confirm_password = request.getParameter("confirm_password");

        if(password.isEmpty() || new_password.isEmpty()
                || confirm_password.isEmpty() || !new_password.equals(confirm_password))
            return "change_password";

        ResultSet resultSet = DatabaseConnection.connect("select * from account");

        try {
            while (resultSet.next()) {
                if(resultSet.getString("username").equals(CheckLogged.LOGGED_USERNAME)) {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mtbs",
                            "root", "hieu6969" );
                    String sql = "UPDATE account SET password = ? WHERE username = ?";
                    PreparedStatement pstmt = connection.prepareStatement(sql);
                    pstmt.setString(1, new_password);
                    pstmt.setString(2, CheckLogged.LOGGED_USERNAME);
                    pstmt.executeUpdate();
                    return "change_success";
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return "change_password";
    }

    @PostMapping("/reset_password")
    public String resetPassword(HttpServletRequest request) throws SQLException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");

        if(username.isEmpty() || email.isEmpty())
            return "reset_password";

        ResultSet resultSetAccount = DatabaseConnection.connect("select * from account");

        ResultSet resultSetUser = DatabaseConnection.connect("select * from user");

        try {
            while(resultSetAccount.next() && resultSetUser.next()) {
                if(resultSetAccount.getString("username").equals(username)) {
                    CheckLogged.setResetPasswordUsername(username);
                    long id = resultSetAccount.getLong("account_id");
                    String sqlEmail = resultSetUser.getString("email");
                    System.out.println(sqlEmail);
                    if (sqlEmail.equals(email)) {
                        double randomDouble = Math.random();
                        randomDouble = randomDouble * 100 + 1;
                        int confirm_code = (int) randomDouble;
                        CheckLogged.setConfirmCode(String.valueOf(confirm_code));

                        SimpleMailMessage message = new SimpleMailMessage();

                        message.setTo(email);
                        message.setSubject("Mã xác nhận lấy lại mật khẩu");
                        message.setText("Anh bạn à, lại quên mật khẩu à\nMã xác nhận của ông đây: " + confirm_code);

                        mailSender.send(message);

                        return "reset_password_confirm";
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return "reset_password";
    }

    @PostMapping("/reset_password_confirm")
    public String resetPasswordConfirm(HttpServletRequest request) {
        if(CheckLogged.CONFIRM_CODE.equals(request.getParameter("confirm_code"))) {
            return "set_new_password";
        }
        return "reset_password_confirm";
    }

    @PostMapping("/set_new_password")
    public String setNewPassword(HttpServletRequest request) throws SQLException {
        String new_password = request.getParameter("new_password");
        String confirm_password = request.getParameter("confirm_password");

        if(new_password.isEmpty() || confirm_password.isEmpty() || !new_password.equals(confirm_password))
            return "set_new_password";

        ResultSet resultSet = DatabaseConnection.connect("select * from account");

        try {
            while (resultSet.next()) {
                if(resultSet.getString("username").equals(CheckLogged.RESET_PASSWORD_USERNAME)) {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mtbs",
                            "root", "hieu6969" );
                    String sql = "UPDATE account SET password = ? WHERE username = ?";
                    PreparedStatement pstmt = connection.prepareStatement(sql);
                    pstmt.setString(1, new_password);
                    pstmt.setString(2, CheckLogged.RESET_PASSWORD_USERNAME);
                    pstmt.executeUpdate();
                    return "reset_password_success";
                }
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return "set_new_password";
    }
}
