package team6.uid.clujsolver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import team6.uid.clujsorver.service.convertor.ProblemConvertor;
import team6.uid.clujsorver.service.convertor.RankLinesConvertor;

import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * Created by todericidan on 12/29/2017.
 */
@Controller
public class ChartsController {

    @RequestMapping(value = "/chartSolvers",method = RequestMethod.GET)
    public String showSolversChart(Model model,HttpSession session){
        session.setAttribute("title","Solvers");

        String message ="Top 10 Problem Solvers";

        session.setAttribute("message",message);

        session.setAttribute("ranks",new RankLinesConvertor().fromJsonToList("ranks.json"));
        return "chartsView";
    }

    @RequestMapping(value = "/chartNotifiers",method = RequestMethod.GET)
    public String showNotifiersChart(Model model, HttpSession session){
        session.setAttribute("title","Notifiers");
        String message ="Top 10 Problem Notifiers";

        session.setAttribute("message",message);
        session.setAttribute("ranks",new RankLinesConvertor().fromJsonToList("ranks.json"));
        return "chartsView";
    }


    @RequestMapping(value = "/filterChart/{date}",method = RequestMethod.GET)
    public String showFilteredChart(@PathVariable("date") String startDate, HttpSession session) {
        session.setAttribute("ranks",new RankLinesConvertor().fromJsonToList("ranks2.json"));

        DateFormat format = new SimpleDateFormat("dd MMMM,yyyy", Locale.ENGLISH);
        Date stop = new Date();

        String message = "Top 10 Problem " + session.getAttribute("title") + " from " + startDate + " to " + format.format(stop) ;
        session.setAttribute("message",message);


        return "chartsView";
    }

    @RequestMapping(value = "/filterChart/{startDate}/{stopDate}",method = RequestMethod.GET)
    public String showFilteredChart(@PathVariable("startDate") String startDate,@PathVariable("stopDate") String stopDate,HttpSession session){
        session.setAttribute("ranks",new RankLinesConvertor().fromJsonToList("ranks2.json"));


        String message = "Top 10 Problem " + session.getAttribute("title") + " from " + startDate + " to " + stopDate ;
        session.setAttribute("message", message);

        return "chartsView";
    }

    @RequestMapping(value = "/filterChart",method = RequestMethod.GET)
    public String showFilteredChart(HttpSession session){
        session.setAttribute("ranks",new RankLinesConvertor().fromJsonToList("ranks2.json"));
        String message = "Top 10 Problem " + session.getAttribute("title");
        session.setAttribute("message",message);
        return "chartsView";
    }



}
