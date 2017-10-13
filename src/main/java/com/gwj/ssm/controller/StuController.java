package com.gwj.ssm.controller;


import com.gwj.ssm.entity.Student;
import com.gwj.ssm.entity.User;
import com.gwj.ssm.service.StuService;
import com.gwj.ssm.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.apache.log4j.Logger;

import java.util.List;
//import java.util.logging.Logger;     ????为什么不可以

@Controller
@RequestMapping("/")
public class StuController {
    private static Logger log = Logger.getLogger(StuController.class);
    @Autowired
    StuService stuService;
    //登录界面
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String Login(){
        return "login";
    }
    //登录界面传值
    @RequestMapping(value = "/loginI",method = RequestMethod.POST)
    public String LoginInto(String username,String password) {
        if (stuService.Login(username, password) != null) {
            // session.setAttribute("username", username);
            //用来保存username的信息作为全局的值,在每个界面都可以获取到.
            //对应getAttribute方法,作用是取出setAttribute的值.
            return "redirect:/liststudent";//重新定向jsp,重新请求url
        }else{
            return "error";
        }
    }
    //注册
    @RequestMapping(value = "regist")
    public String regist(){
        return "regist";
    }
    @RequestMapping(value = "/registInto",method = RequestMethod.POST)
    public ModelAndView registInto(User user){
        stuService.adduser(user);
        ModelAndView modelAndView=new ModelAndView("login");
        return modelAndView;
    }
    @RequestMapping(value = "/search/{id}",method = RequestMethod.GET)
    public String search(Model model, @PathVariable int id){
        Student ss=stuService.get(id);
        model.addAttribute("ss",ss);
        return "search";
    }
    //分页
    @RequestMapping(value = "liststudent",method = RequestMethod.GET)
    public ModelAndView listStudent(Page page){
        ModelAndView modelAndView = new ModelAndView();
        List<Student> cs = stuService.list(page);
        int total = stuService.total();
        page.caculateLast(total);
        modelAndView.addObject("cs",cs);
        modelAndView.setViewName("liststudent");
        return modelAndView;
    }
    //添加页面
    @RequestMapping(value = "/addone",method = RequestMethod.GET)
    public String addone(){
        return "addone";
    }
    //添加页面传值
    @RequestMapping(value = "/addInto",method = RequestMethod.POST)
    public String addStudent(Student student){
        stuService.add(student);
        return "redirect:/liststudent";
    }
    //删除
    @RequestMapping(value = "deleteStudent",method = RequestMethod.GET)
    public String deleteStudent(Student student){
        stuService.delete(student);
        return "redirect:/liststudent";
    }
    //修改数据
    //编辑按钮后跳转到的页面
    @RequestMapping(value = "update")
    public ModelAndView update(Student student){
        Student s = stuService.get(student.getId());
        ModelAndView modelAndView = new ModelAndView("editStudent");
        modelAndView.addObject("s",s);
        return modelAndView;
    }
    //修改按钮后跳转到的页面
    @RequestMapping(value = "updateStudent")
    public ModelAndView updateStudent(Student student){
        stuService.update(student);
        ModelAndView modelAndView = new ModelAndView("redirect:/liststudent");
        return modelAndView;
    }
}
