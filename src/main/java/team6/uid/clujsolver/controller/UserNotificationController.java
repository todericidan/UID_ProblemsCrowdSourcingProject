package team6.uid.clujsolver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserNotificationController {

	@RequestMapping(value = "/notifyUser",method = RequestMethod.GET)
    public String showContributions(){
        return "notifyUser";
    }
}
