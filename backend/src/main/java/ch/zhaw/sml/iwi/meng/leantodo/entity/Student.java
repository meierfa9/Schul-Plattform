package ch.zhaw.sml.iwi.meng.leantodo.entity;

import javax.persistence.Entity;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Entity
@Data
@EqualsAndHashCode(callSuper=true)
public class Student extends Person {
    private String klasse;
}
