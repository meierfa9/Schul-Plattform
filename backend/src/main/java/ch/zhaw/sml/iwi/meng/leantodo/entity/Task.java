package ch.zhaw.sml.iwi.meng.leantodo.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonUnwrapped;

import lombok.Data;

@Entity
@Data
public class Task {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String name;
    private String description;

    private Boolean done;

    
    @ManyToOne
    @JsonUnwrapped
    private Schulfach schulfach;
    
    
}
