package ch.zhaw.sml.iwi.meng.leantodo.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

import com.fasterxml.jackson.annotation.JsonUnwrapped;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Entity
@Data
public class Schulfach {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;

    @ManyToMany
    @JsonUnwrapped
    private List<Teacher> teacher = new ArrayList<>();

    @ManyToMany
    @JsonUnwrapped
    private List<Student> student = new ArrayList<>();

}
