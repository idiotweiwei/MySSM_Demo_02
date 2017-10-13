package com.gwj.ssm.dao;

import com.gwj.ssm.entity.Student;
import com.gwj.ssm.entity.User;
import com.gwj.ssm.util.Page;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StuDao {
    public int add(Student student);//增加
    public void delete(int id);//删除
    public Student get(int id);//查询
    public int update(Student student);//修改
    public List<Student>list();//列出表
    public List<Student>list(Page page);//分页
    public int total();

    public int adduser(User user);//注册
    User Login(@Param("username")String username,@Param("password")String password);//登录
}
