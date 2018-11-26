package app.model;

import app.entities.User;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Created by zibady on 11/26/18.
 *
 * Uses singleton for save data
 */
public class UsersList {
    private static UsersList instance = new UsersList();
    private List<User> users;

    private UsersList() {
        users = new ArrayList<>();
    }

    public static UsersList getInstance() {
        return instance;
    }

    public void add(User user) {
        users.add(user);
    }
    public List<String> getListOfUsers() {
        return users.stream()
                .map(User::getLogin)
                .collect(Collectors.toList());
    }
}
