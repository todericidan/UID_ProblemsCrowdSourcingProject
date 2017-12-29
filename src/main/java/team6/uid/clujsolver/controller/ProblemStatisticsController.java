package team6.uid.clujsolver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by todericidan on 12/29/2017.
 */
@Controller
public class ProblemStatisticsController {

    @RequestMapping(value = "/problemStats",method = RequestMethod.GET)
    public String showProblemStats(Model model){

        String message = "sadssa";
        model.addAttribute("message",message);

        return "problemStats";
    }

}
