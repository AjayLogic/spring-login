package hu.bbabics.springboot_login.repository;

import hu.bbabics.springboot_login.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long>{
}
