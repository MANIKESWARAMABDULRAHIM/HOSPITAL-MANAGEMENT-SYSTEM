package com.mvc.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mvc.model.Leave;
import com.mvc.repository.LeaveRepository;

@Service
public class LeaveService {

    private LeaveRepository repository;

    public LeaveService(LeaveRepository repository) {
        this.repository = repository;
    }

    public Leave saveLeave(Leave leave) {
        return repository.save(leave);
    }

    public List<Leave> getAllLeaves() {
        return repository.findAll();
    }

    public List<Leave> getLeavesByEmail(String email) {
        return repository.findByEmail(email);
    }

    public Leave searchLeave(int id) {

        return repository
                .findById(id)
                .orElse(new Leave());
    }

    public void deleteLeave(int id) {
        repository.deleteById(id);
    }

    public void updateStatus(int id, String status) {

        Leave leave = searchLeave(id);

        if (leave.getId() != 0) {

            leave.setStatus(status);

            repository.save(leave);
        }
    }
}