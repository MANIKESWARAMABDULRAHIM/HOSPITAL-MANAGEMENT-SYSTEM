package com.mvc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mvc.model.Leave;

@Repository
public interface LeaveRepository extends JpaRepository<Leave, Integer> {

    List<Leave> findByEmail(String email);

}