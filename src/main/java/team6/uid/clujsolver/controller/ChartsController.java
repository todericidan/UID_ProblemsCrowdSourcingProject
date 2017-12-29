package team6.uid.clujsolver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by todericidan on 12/29/2017.
 */
@Controller
public class ChartsController {

    @RequestMapping(value = "/chartSolvers",method = RequestMethod.GET)
    public String showSolversChart(Model model){
        String message = "Solvers";
        model.addAttribute("title",message);

        return "chartsView";
    }

    @RequestMapping(value = "/chartNotifiers",method = RequestMethod.GET)
    public String showNotifiersChart(Model model){
        String message = "Notifiers";
        model.addAttribute("title",message);

        return "chartsView";
    }
}
