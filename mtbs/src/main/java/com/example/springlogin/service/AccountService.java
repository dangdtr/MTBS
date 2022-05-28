package com.example.springlogin.service;

import com.example.springlogin.model.Account;

import java.util.List;

public interface AccountService {
    List<Account> getAllAccounts();

    Account getAccountById(Long id);

    void addAccount(Account account);

    void updateAccountById(Account account, Long account_id);

    void deleteAccountById(Long acocunt_id);
}
