package team6.uid.clujsolver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HelpController {
    @RequestMapping(value = "/help",method = RequestMethod.GET)
    public String HelpPage(){
        return "help";
    }
}
