package rs.ac.singidunum.vendor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rs.ac.singidunum.vendor.entity.User;
import rs.ac.singidunum.vendor.repository.IUserRepository;

import java.util.List;

@Service
public class UserService implements IUserService {
    @Autowired
    private IUserRepository userRepository;

    @Override
    public User createNewUser(User newUser) {
        return this.userRepository.saveAndFlush(newUser);
    }

    @Override
    public User updateUserById(int id, User newUserData) {
        User user = this.findUserById(id);
        if(user == null) return null;

        if(newUserData.getFirstname() != null) user.setFirstname(newUserData.getFirstname());
        if(newUserData.getLastname() != null) user.setLastname(newUserData.getLastname());
        if(newUserData.getPassword() != null) user.setPassword(newUserData.getPassword());
        if(newUserData.getEmail() != null) user.setEmail(newUserData.getEmail());
        if(newUserData.getPhone() != null) user.setPhone(newUserData.getPhone());
        if(newUserData.getCity() != null) user.setCity(newUserData.getCity());
        if(newUserData.getPostcode() != null) user.setPostcode(newUserData.getPostcode());
        if(newUserData.getAddress1() != null) user.setAddress1(newUserData.getAddress1());

        return this.createNewUser(user);
    }

    @Override
    public void deleteUserById(int id) {
        userRepository.deleteById(id);
    }

    @Override
    public User findUserById(int id) {
        return this.userRepository.findById(id).isPresent()
                ? this.userRepository.findById(id).get() : null;
    }

    @Override
    public List<User> listUsers() {
        return this.userRepository.findAll();
    }
}