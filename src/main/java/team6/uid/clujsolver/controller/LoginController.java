package team6.uid.clujsolver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class LoginController {
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String showLoginPage(){

        return "login";
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String authenticate(@RequestParam("email") String email, @RequestParam("password") String password){

        System.out.println(email);
        System.out.println(password);
        if(email.equals("user") && password.equals("pass")){
            return "communityProblemsView";
        }
        if(email.equals("admin") && password.equals("admin")){
        	return "adminView";
        }
        return "login";
    }
}
