package team6.uid.clujsolver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import team6.uid.clujsorver.service.convertor.ProblemConvertor;
import team6.uid.clujsorver.service.convertor.RankLinesConvertor;

import javax.servlet.http.HttpSession;

/**
 * Created by todericidan on 12/29/2017.
 */
@Controller
public class ChartsController {

    @RequestMapping(value = "/chartSolvers",method = RequestMethod.GET)
    public String showSolversChart(Model model,HttpSession session){
        session.setAttribute("title","Solvers");
        session.setAttribute("ranks",new RankLinesConvertor().fromJsonToList("ranks.json"));
        return "chartsView";
    }

    @RequestMapping(value = "/chartNotifiers",method = RequestMethod.GET)
    public String showNotifiersChart(Model model, HttpSession session){
        session.setAttribute("title","Notifiers");
        session.setAttribute("ranks",new RankLinesConvertor().fromJsonToList("ranks.json"));
        return "chartsView";
    }


    @RequestMapping(value = "/filterChart",method = RequestMethod.GET)
    public String showFilteredChart(HttpSession session){
        session.setAttribute("ranks",new RankLinesConvertor().fromJsonToList("ranks2.json"));
        return "chartsView";
    }



}
