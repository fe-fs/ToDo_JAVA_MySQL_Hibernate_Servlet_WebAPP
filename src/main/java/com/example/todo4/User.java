package com.example.todo4;

import javax.persistence.*;

/**
 * User.java
 * This is a model class represents a User entity
 *
 */

@Entity
@Table(name="todo_list")
public class User {

    @Id //primary key of the entity
    @GeneratedValue(strategy = GenerationType.IDENTITY) //This annotation specifies the generation strategies for the values of primary keys.
    @Column(name = "id") //The @Column annotation is used to specify the mapping between a basic entity attribute and the database table column.
    private int id;

    @Column(name = "description")
    private String description;

    @Column(name = "is_done")
    private int is_done;
    public User() {
    }

    public User(String description, int is_done) {
        super();
        this.description = description;
        this.is_done = is_done;
    }

    public User(int id, String description, int is_done){
        this.id = id;
        this.description = description;
        this.is_done = is_done;

    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getIs_done() {
        return is_done;
    }

    @Override
    public String toString() {
        return "Entity{" +
                "is_done=" + (is_done == 1 ? "Yes" : "No") +
                '}';
    }


}
