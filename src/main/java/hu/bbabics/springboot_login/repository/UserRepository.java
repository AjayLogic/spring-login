package hu.bbabics.springboot_login.repository;

import hu.bbabics.springboot_login.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
