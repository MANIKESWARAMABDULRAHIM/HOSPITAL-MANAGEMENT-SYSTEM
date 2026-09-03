package com.course.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.course.model.Course;
import com.course.service.CourseService;

@RestController
@RequestMapping("/api/courses")
public class CourseController {

	private CourseService service;

	public CourseController(CourseService service) {
		this.service = service;
	}

	@PostMapping
	public ResponseEntity<?> saveCourse(@RequestBody Course course) {
		Course obj = service.saveCourse(course);

		if (obj != null) {
			return new ResponseEntity<>("Course added successfully...", HttpStatus.CREATED);
		} else {
			return new ResponseEntity<>("Error adding course...", HttpStatus.BAD_REQUEST);
		}
	}

	@GetMapping
	public ResponseEntity<?> getAllCourses() {
		List<Course> courseList = service.getAllCourses();

		if (courseList.size() == 0) {
			return new ResponseEntity<>("Sorry no courses found...", HttpStatus.NOT_FOUND);
		} else {
			return new ResponseEntity<>(courseList, HttpStatus.OK);
		}
	}

	@GetMapping("/{id}")
	public ResponseEntity<?> searchCourse(@PathVariable Integer id) {
		Course course = service.searchCourse(id);

		if (course.getId() != null) {
			return new ResponseEntity<>(course, HttpStatus.OK);
		} else {
			return new ResponseEntity<>("Invalid course id...", HttpStatus.NOT_FOUND);
		}
	}

	@PutMapping
	public ResponseEntity<?> updateCourse(@RequestBody Course course) {
		Course obj = service.searchCourse(course.getId());

		if (obj.getId() != null) {
			service.saveCourse(course);

			return new ResponseEntity<>("Course updated successfully...", HttpStatus.OK);
		} else {
			return new ResponseEntity<>("Invalid course id...", HttpStatus.BAD_REQUEST);
		}
	}

	@DeleteMapping("/{id}")
	public ResponseEntity<?> deleteCourse(@PathVariable Integer id) {
		Course course = service.searchCourse(id);

		if (course.getId() != null) {
			service.deleteCourse(id);

			return new ResponseEntity<>("Course deleted successfully...", HttpStatus.OK);
		} else {
			return new ResponseEntity<>("Invalid course id...", HttpStatus.BAD_REQUEST);
		}
	}
}