package com.gwj.ssm.service;

import com.gwj.ssm.entity.Student;
import com.gwj.ssm.entity.User;
import com.gwj.ssm.util.Page;

import java.util.List;

public interface StuService {
    void add(Student s);
    void delete(Student s);
    void  update(Student s);
    Student get(int id);
    List<Student> list();
    List<Student> list(Page page);
    int total();
    User Login(String username, String password);
    void adduser(User u);
}
