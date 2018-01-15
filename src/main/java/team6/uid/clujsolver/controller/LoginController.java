package team6.uid.clujsolver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
    public String authenticate(@RequestParam("email") String email, @RequestParam("password") String password, Model model){

        if(email.equals("janedoe@gmail.com") && password.equals("parola")){
            return "communityProblemsView";
        }
        if(email.equals("admin") && password.equals("admin")) {
            return "adminView";
        }

        model.addAttribute("loginOutcome","failed");
        return "login";
    }
}
