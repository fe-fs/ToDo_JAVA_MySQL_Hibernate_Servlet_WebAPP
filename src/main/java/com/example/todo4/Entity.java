/*Modulo 07 - Assignment
 * Java Todo List Application with Hibernate and MySQL database
 * Name: Fernanda Frederico Ribeiro da Silva
 * Class: Software Development II CEN-4025C-24671
 * Professor: Walauskis
 */


package com.example.todo4;
import javax.persistence.*;

/**
 * User.java >>Re-wrote from old Entity_db class
 * This is a model class represents a User entity
 *
 */

@javax.persistence.Entity
@Table(name="todo_list")
public class Entity {

    @Id //primary key of the entity
    @GeneratedValue(strategy = GenerationType.IDENTITY) //This annotation specifies the generation strategies for the values of primary keys.
    @Column(name = "id") //The @Column annotation is used to specify the mapping between a basic entity attribute and the database table column.
    private int id;

    @Column(name = "description")
    private String description;

    @Column(name = "is_done")
    private int is_done;
    public Entity() {
    }

    public Entity(String description, int is_done) {
        super();
        this.description = description;
        this.is_done = is_done;
    }

    public Entity(int id, String description, int is_done){
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
