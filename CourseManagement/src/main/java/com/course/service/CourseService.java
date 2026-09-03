package com.course.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.course.model.Course;
import com.course.repository.CourseRepository;

@Service
public class CourseService {

    private CourseRepository repository;

    public CourseService(CourseRepository repository) {
        this.repository = repository;
    }

    public Course saveCourse(Course course) {
        return repository.save(course);
    }

    public List<Course> getAllCourses() {
        return repository.findAll();
    }

    public Course searchCourse(Integer id) {
        return repository.findById(id).orElse(new Course());
    }

    public void deleteCourse(Integer id) {
        repository.deleteById(id);
    }
}