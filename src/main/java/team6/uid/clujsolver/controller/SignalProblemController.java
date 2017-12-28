package team6.uid.clujsolver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by dell on 12/29/2017.
 */
@Controller
public class SignalProblemController {

    @RequestMapping(value = "/newProblem",method = RequestMethod.GET)
    public String showLoginPage(){

        return "signalProblemView";
    }
}
