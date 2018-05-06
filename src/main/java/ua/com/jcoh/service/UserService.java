package ua.com.jcoh.service;

import ua.com.jcoh.model.User;

/**
 * Service class for {@link ua.com.jcoh.model.User}
 *
 * @author Andrii Androsiuk
 * @version 1.0
 */

public interface UserService {

    void save(User user);

    User findByUsername(String username);
}
