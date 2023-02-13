package ch.zhaw.sml.iwi.meng.leantodo.entity;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorType;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.JsonTypeInfo.As;

import javax.persistence.Table;

import lombok.NoArgsConstructor;

import lombok.Data;

@Entity
@Data
@NoArgsConstructor

@Table(name = "PERSONTABLE")
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name = "Status", discriminatorType = DiscriminatorType.STRING)

@JsonTypeInfo(use = JsonTypeInfo.Id.NAME, include = As.PROPERTY, property = "type")
@JsonSubTypes({
        @JsonSubTypes.Type(value = Teacher.class, name = "TeacherType"),
        @JsonSubTypes.Type(value = Student.class, name = "StudentType")
})

public abstract class Person {

    @Id
    private String userName;

    private String name;
    private String surname;

    private String humantype;

}