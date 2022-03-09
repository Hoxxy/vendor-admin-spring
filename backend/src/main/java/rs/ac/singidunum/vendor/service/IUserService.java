package rs.ac.singidunum.vendor.service;

import rs.ac.singidunum.vendor.entity.User;

import java.util.List;
import java.util.NoSuchElementException;

public interface IUserService {
    User createNewUser(User newUser);
    User updateUserById(int id, User user);
    void deleteUserById(int id);
    User findUserById(int id) throws NoSuchElementException;
    List<User> listUsers();
}
