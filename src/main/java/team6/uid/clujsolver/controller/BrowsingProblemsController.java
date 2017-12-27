package team6.uid.clujsolver.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BrowsingProblemsController {

    @RequestMapping(value = "/problems",method = RequestMethod.GET)
    public String showCommunityProblems(Model model){

        return "communityProblemsView";
    }
}
