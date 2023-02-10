package ch.zhaw.sml.iwi.meng.leantodo.boundary;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import ch.zhaw.sml.iwi.meng.leantodo.entity.Person;
import ch.zhaw.sml.iwi.meng.leantodo.entity.PersonRepository;

@RestController
@CrossOrigin
public class PersonRest {

    @Autowired
    private PersonRepository personRepository;


    @GetMapping(path="/api/person/{id}")
    public ResponseEntity<Person> getPersonsById(@PathVariable("id") String id) {
        Optional<Person> person = personRepository.findById(id);
        if(person.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        else {
            return new ResponseEntity<>(person.get(),HttpStatus.OK);
        }
    }

    @GetMapping(path="/api/persons")
    public List<Person> listAllPersons() {
        return personRepository.findAll();
    }
    /*
    @GetMapping(path="/api/person/{status}")
    public ResponseEntity<Person> getPersonsByStatus(@PathVariable("status") String status) {
        List<Person> person = personRepository.findByStatus(status);
        if(person.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
        else {
            return new ResponseEntity<Person>(,HttpStatus.OK);
        }
    }
    */
}
