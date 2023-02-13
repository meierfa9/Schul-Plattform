package ch.zhaw.sml.iwi.meng.leantodo.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonUnwrapped;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Entity
@Data
public class Schulfach {

    @Id
    private String title;

    @ManyToOne
    private Teacher teacher;

    @ManyToMany
    @JsonUnwrapped
    private List<Student> student = new ArrayList<>();

}
