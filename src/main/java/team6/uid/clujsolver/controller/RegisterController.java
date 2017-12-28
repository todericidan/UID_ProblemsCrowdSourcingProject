package team6.uid.clujsolver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by dell on 12/28/2017.
 */
@Controller
public class RegisterController {
    @RequestMapping(value = "/register",method = RequestMethod.GET)
    public String showLoginPage(){

        return "register";
    }

    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public String authenticate(@RequestParam("email") String email, @RequestParam("password") String password){


        return "register";
    }
}
