package ua.com.jcoh.dao;

import ua.com.jcoh.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleDao extends JpaRepository<Role, Long> {
}
