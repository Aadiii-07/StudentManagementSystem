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
	AdminService adminService;
	@Autowired
	AttendanceService attendanceService;
	@Autowired
	HalfDayRequestService halfDayRequestService;
	@Autowired
	JdbcTemplate jdbcTemplate;
	@RequestMapping("/")
	public String homePage() {
	    return "home";
	}
	@RequestMapping("/studentlogin")
	public String studentLoginPage() {
	    return "studentlogin";
	}
	@RequestMapping("/studentsignup")
	public String studentSignupPage() {
	    return "studentsignup";
	}
	@RequestMapping("/adminsignup")
	public String adminSignupPage() {
	    return "adminsignup";
	}
	@RequestMapping("/adminlogin")
	public String adminLoginPage() {
	    return "adminlogin";
	}
	@RequestMapping("/viewstudents")
	public String viewStudents(ModelMap map) {

	    List<Student> students =
	            studentService.getAllStudents();

	    map.addAttribute("students", students);

	    return "viewstudents";
	}
	@RequestMapping("/studentattendance")
	public String studentAttendance() {
	    return "studentattendance";
	}
	@RequestMapping("/halfdayform")
	public String halfDayForm() {
	    return "halfdayform";
	}
	@RequestMapping("/attendance")
	public String attendancePage() {
	    return "attendance";
	}
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
    @RequestMapping(value="/studentlogin",method=RequestMethod.POST)
    public String studentLogin(
            @RequestParam String username,
            @RequestParam String password,
            ModelMap map) {

        Student std =
                studentService.loginStudent(username, password);

        if(std == null) {

            map.addAttribute(
                    "message",
                    "Invalid Email/Mobile or Password");

            return "studentlogin";
        }

        map.addAttribute("student", std);

        return "studentdashboard";
    }
   

    @RequestMapping(value="/applyhalfday",method=RequestMethod.POST)
    public String applyHalfDay(
            @RequestParam String studentId,
            @RequestParam String reason,
            ModelMap map) {

        HalfDayRequest request =
                new HalfDayRequest();

        request.setStudentId(studentId);
        request.setReason(reason);

        request.setRequestDate(
                java.time.LocalDate.now().toString());

        String status =
                halfDayRequestService
                .applyRequest(request);

        map.addAttribute(
                "operation",
                "HALF DAY REQUEST");

        if(status.equals("success"))
            return "success";

        return "failure";
    }
    @RequestMapping("/viewrequests")
    public String viewRequests(ModelMap map) {

        List<HalfDayRequest> requests =
                halfDayRequestService.getAllRequests();

        map.addAttribute("requests", requests);

        return "viewrequests";
    }
    @RequestMapping("/approveRequest")
    public String approveRequest(
            @RequestParam int requestId) {

        halfDayRequestService
                .approveRequest(requestId);

        return "redirect:/viewrequests";
    }
    @RequestMapping("/rejectRequest")
    public String rejectRequest(
            @RequestParam int requestId) {

        halfDayRequestService
                .rejectRequest(requestId);

        return "redirect:/viewrequests";
    }
    @RequestMapping(value="/studentsignup",method=RequestMethod.POST)
    public String studentSignup(
            @RequestParam String sid,
            @RequestParam String sname,
            @RequestParam String saddr,
            @RequestParam String email,
            @RequestParam String mobile,
            @RequestParam String password,
            @RequestParam int courseId,
            ModelMap map) {

        Student std = new Student();

        std.setSid(sid);
        std.setSname(sname);
        std.setSaddr(saddr);
        std.setEmail(email);
        std.setMobile(mobile);
        std.setPassword(password);
        std.setCourseId(courseId);

        String status = studentService.signupStudent(std);

        map.addAttribute("operation","SIGNUP");

        if(status.equals("success"))
            return "success";

        return "failure";
    }
    @RequestMapping(value="/adminsignup",method=RequestMethod.POST)
    public String adminSignup(
            @RequestParam String adminName,
            @RequestParam String email,
            @RequestParam String mobile,
            @RequestParam String password,
            ModelMap map) {

        Admin admin = new Admin();

        admin.setAdminName(adminName);
        admin.setEmail(email);
        admin.setMobile(mobile);
        admin.setPassword(password);

        String status = adminService.signup(admin);

        map.addAttribute("operation","ADMIN SIGNUP");

        if(status.equals("success"))
            return "success";

        return "failure";
    }
    @RequestMapping(value="/markattendance",method=RequestMethod.POST)
    public String markAttendance(
            @RequestParam String studentId,
            @RequestParam String attendanceDate,
            @RequestParam String status,
            @RequestParam(required=false) String reason,
            ModelMap map) {

        Attendance attendance = new Attendance();

        attendance.setStudentId(studentId);
        attendance.setAttendanceDate(attendanceDate);
        attendance.setStatus(status);
        attendance.setReason(reason);

        String result =
                attendanceService.markAttendance(attendance);

        map.addAttribute("operation","ATTENDANCE");

        if(result.equals("success"))
            return "success";

        return "failure";
    }
    @RequestMapping("/viewattendance")
    public String viewAttendance(ModelMap map) {

        List<Attendance> list =
                attendanceService.getAllAttendance();

        map.addAttribute("attendanceList", list);

        return "viewattendance";
    }
    @RequestMapping(value="/adminlogin",method=RequestMethod.POST)
    public String adminLogin(
            @RequestParam String username,
            @RequestParam String password,
            ModelMap map) {

        Admin admin = adminService.login(username,password);

        if(admin == null) {

            map.addAttribute("message",
                    "Invalid Login Credentials");

            return "adminlogin";
        }

        map.addAttribute("admin",admin);

        return "welcome";
    }
}