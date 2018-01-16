package team6.uid.clujsolver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;


@Controller
public class LoginController {
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String showLoginPage(){

        return "login";
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String authenticate(@RequestParam("email") String email, @RequestParam("password") String password, Model model, HttpSession session){

        if(email.equals("janedoe@gmail.com") && password.equals("parola")){
            session.setAttribute("user","solver");
            return "redirect:/problems";
        }
        if(email.equals("admin@gmail.com") && password.equals("admin")) {

            return "adminView";
        }
        if(email.equals("janedont@gmail.com") && password.equals("parola")){
            session.setAttribute("user","notifier");
            return "redirect:/problems";
        }

        model.addAttribute("loginOutcome","failed");
        return "login";
    }
}
