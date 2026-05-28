package com.iiht;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller

public class StudentController {
	@Autowired
	JdbcTemplate jdbcTemplate;
	@RequestMapping("/audit")
	public String viewAudit(ModelMap map) {

	    List<Map<String, Object>> logs =
	        jdbcTemplate.queryForList(
	        		"SELECT * FROM student_audit ORDER BY created_at DESC"
	        );

	    map.addAttribute("logs", logs);

	    return "audit";
	}

    @Autowired
    StudentService studentService;
    
  
 
    @RequestMapping("/welcomepage")
    public String showWelcomePage() {
        return "welcome";
    }

    @RequestMapping("/addform")
    public String showAddPage() {
        return "addform";
    }

    @RequestMapping("/searchform")
    public String showSearchPage() {
        return "searchform";
    }

    @RequestMapping("/updateform")
    public String showUpdatePage() {
        return "updateform";
    }

    @RequestMapping("/editform")
    public String showEditPage() {
        return "editform";
    }

    @RequestMapping("/deleteform")
    public String showDeletePage() {
        return "deleteform";
    }

    
  
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(ModelMap map,
                      @RequestParam String sid,
                      @RequestParam String sname,
                      @RequestParam String saddr) {

        Student std = new Student();
        std.setSid(sid);
        std.setSname(sname);
        std.setSaddr(saddr);

        return studentService.addStudent(std);
    }

    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public String search(ModelMap map, @RequestParam String sid) {

        Student std = studentService.searchStudent(sid);

        if (std == null) {
            return "notexisted";
        }

        map.addAttribute("std", std);
        return "studentdetails";
    }

    @RequestMapping(value = "/editform", method = RequestMethod.POST)
    public String getEditForm(ModelMap map, @RequestParam String sid) {

        Student std = studentService.searchStudent(sid);

        if (std == null) {
            return "notexisted";
        }

        map.addAttribute("std", std);
        return "editform";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(ModelMap map,
                         @RequestParam String sid,
                         @RequestParam String sname,
                         @RequestParam String saddr) {

        Student std = new Student();
        std.setSid(sid);
        std.setSname(sname);
        std.setSaddr(saddr);

        return studentService.updateStudent(std);
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(ModelMap map, @RequestParam String sid) {

        return studentService.deleteStudent(sid);
    }
}