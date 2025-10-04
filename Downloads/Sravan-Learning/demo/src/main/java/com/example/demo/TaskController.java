package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController // Makes the class a REST API controller
@RequestMapping("/api/tasks") // Base URL for all endpoints in this controller
public class TaskController {

    @Autowired
    private TaskRepository taskRepository;

    // CREATE (POST) - http://localhost:8080/api/tasks
    @PostMapping
    public Task createTask(@RequestBody Task task) {
        return taskRepository.save(task);
    }

    // READ ALL (GET) - http://localhost:8080/api/tasks
    @GetMapping
    public List<Task> getAllTasks() {
        return taskRepository.findAll();
    }

    // READ ONE (GET) - http://localhost:8080/api/tasks/1
    @GetMapping("/{id}")
    public Optional<Task> getTaskById(@PathVariable Long id) {
        return taskRepository.findById(id);
    }

    // DELETE (DELETE) - http://localhost:8080/api/tasks/1
    @DeleteMapping("/{id}")
    public void deleteTask(@PathVariable Long id) {
        taskRepository.deleteById(id);
    }
}