package com.example.springlogin.service.Impl;

import com.example.springlogin.model.Account;
import com.example.springlogin.repository.AccountRepository;
import com.example.springlogin.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Primary
public class AccountServiceImpl implements AccountService {
    @Autowired
    private AccountRepository accountRepository;

    @Override
    public List<Account> getAllAccounts() {
        return accountRepository.findAll();
    }

    @Override
    public Account getAccountById(Long id) {
        return accountRepository.findById(id).orElseThrow(
                () -> new RuntimeException("Cannot find by id: " + id));
    }

    @Override
    public void addAccount(Account account) {
        accountRepository.save(account);
    }

    @Override
    public void updateAccountById(Account newAccount, Long account_id) {
        accountRepository.findById(account_id).map(
                account -> {
                    account.setAccount_id(account_id);
                    account.setUsername(newAccount.getUsername());
                    account.setPassword(newAccount.getPassword());
                    account.setAccountStatus(newAccount.getAccountStatus());
                    return accountRepository.save(account);
                }).orElseGet(
                () -> {
                    newAccount.setAccount_id(account_id);
                    return accountRepository.save(newAccount);
                }
        );
    }

    @Override
    public void deleteAccountById(Long acocunt_id) {
        if(accountRepository.existsById(acocunt_id)) {
            accountRepository.deleteById(acocunt_id);
        }
    }
}
