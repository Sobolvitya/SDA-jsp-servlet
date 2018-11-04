package app.model;

import app.entities.User;

import java.util.ArrayList;
import java.util.List;

import static java.util.stream.Collectors.toList;

public class Model {

    private final List<User> users;

    private static Model instance;

    private Model() {
        users = new ArrayList<>();
    }

    public static Model getInstance() {
        if (instance == null) {
            instance = new Model();
        }
        return instance;
    }

    public void addUser(User user) {
        users.add(user);
    }

    public List<String> getUserNames() {
        return users.stream()
                .map(User::getName)
                .collect(toList());
    }

}
