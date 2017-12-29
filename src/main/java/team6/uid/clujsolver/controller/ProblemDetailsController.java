package team6.uid.clujsolver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProblemDetailsController {

    @RequestMapping(value = "/problemDetails",method = RequestMethod.GET)
    public String showLoginPage(){
        return "problemDetails";
    }
}
