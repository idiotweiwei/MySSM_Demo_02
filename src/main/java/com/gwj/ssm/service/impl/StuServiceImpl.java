package com.gwj.ssm.service.impl;

import com.gwj.ssm.dao.StuDao;
import com.gwj.ssm.entity.Student;
import com.gwj.ssm.entity.User;
import com.gwj.ssm.service.StuService;
import com.gwj.ssm.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StuServiceImpl implements StuService {

    @Autowired
    StuDao stuDao;
    public void add(Student s){
        stuDao.add(s);
    }
    public void delete(Student s){
        stuDao.delete(s.getId());
    }
    public void update(Student s){
        stuDao.update(s);
    }

    public Student get(int id) {
        return stuDao.get(id);
    }

    public List<Student> list() {
        return stuDao.list();
    }

    public List<Student> list(Page page) {
        return stuDao.list(page);
    }
    public int total(){
        return stuDao.total();
    }
    public void adduser(User u){
        stuDao.adduser(u);
    }


    @Override
    public User Login(String username,String password){
        return stuDao.Login(username,password);
    }

}
