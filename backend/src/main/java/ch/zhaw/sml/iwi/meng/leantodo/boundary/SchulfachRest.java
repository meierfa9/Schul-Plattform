package ch.zhaw.sml.iwi.meng.leantodo.boundary;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import ch.zhaw.sml.iwi.meng.leantodo.entity.Schulfach;
import ch.zhaw.sml.iwi.meng.leantodo.entity.SchulfachRepository;

@RestController
public class SchulfachRest {

    @Autowired
    private SchulfachRepository schulRepository;

    @GetMapping(path="/api/schulfaecher")
    public List<Schulfach> listAllSchulfaecher() {
        return schulRepository.findAll();
    }

}
