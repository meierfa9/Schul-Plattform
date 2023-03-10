package ch.zhaw.sml.iwi.meng.leantodo.boundary;
import org.springframework.http.ResponseEntity;

import java.net.URI;
import java.util.List;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import net.minidev.json.JSONObject;

import ch.zhaw.sml.iwi.meng.leantodo.entity.Task;
import ch.zhaw.sml.iwi.meng.leantodo.entity.TaskRepository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.http.HttpStatus;

@RestController
public class TaskRest {

    @Autowired
    private TaskRepository taskRepository;

    @GetMapping(path = "/api/tasks")
    public List<Task> listAllTasks() {
        return taskRepository.findAll();
    }

    @RequestMapping(path = "/api/tasks", method=RequestMethod.POST)
    public ResponseEntity<Task> addTask(@RequestBody Task newTask) {
        Task persistedTask = taskRepository.save(newTask);
        return ResponseEntity
            .created(URI
                     .create(String.format("/persons/%s", newTask.getId())))
            .body(persistedTask);
    }

    @PutMapping(path = "/api/tasks")
    public Task setTaskDone(@RequestBody Task newTask){
        taskRepository.save(newTask);
        return newTask;

    }



    @GetMapping(path = "/api/tasks/{done}")
    public ResponseEntity<Object> getPersonsbyHumanType(@PathVariable("done") Boolean done) {
        List<Task> tasks = new ArrayList<>();
        tasks = taskRepository.findByDone(done);

        List<JSONObject> entities = new ArrayList<JSONObject>();
        for (Task n : tasks) {
            JSONObject entity = new JSONObject();
            entity.put("id", n.getId());
            entity.put("name", n.getName());
            entity.put("description", n.getDescription());
            entity.put("done", n.getDone());
            entity.put("schulfach", n.getSchulfach());
            entities.add(entity);
        }

        if (tasks.isEmpty()) {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        } else {
            return new ResponseEntity<Object>(entities, HttpStatus.OK);
        }

    }

}
