package ch.zhaw.sml.iwi.meng.leantodo.entity;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
public interface PersonRepository extends JpaRepository<Person, String>{

    List<Person> findByHumantype(String humantype);

    
}
