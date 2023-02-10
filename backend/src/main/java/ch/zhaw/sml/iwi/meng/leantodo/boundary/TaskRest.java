package ch.zhaw.sml.iwi.meng.leantodo.boundary;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import ch.zhaw.sml.iwi.meng.leantodo.entity.Task;
import ch.zhaw.sml.iwi.meng.leantodo.entity.TaskRepository;

@RestController
public class TaskRest {
    
    @Autowired
    private TaskRepository taskRepository;

    @GetMapping(path="/api/tasks")
    public List<Task> listAllTasks() {
        return taskRepository.findAll();
    }
}
