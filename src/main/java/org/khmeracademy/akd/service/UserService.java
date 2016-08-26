package org.khmeracademy.akd.service;

import org.khmeracademy.akd.entity.User;
import org.khmeracademy.akd.entity.UserLogin;

public interface UserService {

	User findUserByEmail(UserLogin userlogin);
}
