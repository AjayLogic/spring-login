package hu.bbabics.springboot_login.service;

import hu.bbabics.springboot_login.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
