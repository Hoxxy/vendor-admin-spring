package rs.ac.singidunum.vendor.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import rs.ac.singidunum.vendor.entity.User;
import rs.ac.singidunum.vendor.service.UserService;

import java.util.List;

@RestController()
@RequestMapping("vendor/user")
public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping("insert")
    @CrossOrigin(origins = {"http://localhost:4200", "https://localhost:4200"})
    public User createNewUser(@RequestBody User newUser) {
        return this.userService.createNewUser(newUser);
    }

    @RequestMapping(value ="update/{id}", method = RequestMethod.PATCH)
    @CrossOrigin(origins = {"http://localhost:4200", "https://localhost:4200"})
    public User updateUser(@PathVariable int id, @RequestBody User user) {
        return this.userService.updateUserById(id, user);
    }

    @RequestMapping(value = "delete/{id}", method = RequestMethod.DELETE)
    @CrossOrigin(origins = {"http://localhost:4200", "https://localhost:4200"})
    public void deleteUser(@PathVariable int id) {
        this.userService.deleteUserById(id);
    }

    @RequestMapping(value = "find/{id}", method = RequestMethod.GET)
    @CrossOrigin(origins = {"http://localhost:4200", "https://localhost:4200"})
    public User findUser(@PathVariable int id) {
        return this.userService.findUserById(id);
    }

    @GetMapping("list")
    @CrossOrigin(origins = {"http://localhost:4200", "https://localhost:4200"})
    public List<User> listUsers() {
        return this.userService.listUsers();
    }
}