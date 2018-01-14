package team6.uid.clujsolver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import team6.uid.clujsorver.service.convertor.RankLinesConvertor;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by todericidan on 12/29/2017.
 */
@Controller
public class ProblemStatisticsController {

    @RequestMapping(value = "/problemStats",method = RequestMethod.GET)
    public String showProblemStats(HttpSession session){
        List<String> monthData= new ArrayList<String>();
        monthData.add("\"Jan\"");
        monthData.add("\"Feb\"");
        monthData.add("\"Mar\"");
        monthData.add("\"Apr\"");
        monthData.add("\"May\"");
        monthData.add("\"Jun\"");
        monthData.add("\"Jul\"");
        monthData.add("\"Aug\"");
        monthData.add("\"Sep\"");
        monthData.add("\"Oct\"");
        session.setAttribute("months",monthData);

        List<Integer> valueData = new ArrayList<Integer>();
        valueData.add(23);
        valueData.add(22);
        valueData.add(40);
        valueData.add(11);
        valueData.add(34);
        valueData.add(23);
        valueData.add(22);
        valueData.add(40);
        valueData.add(11);
        valueData.add(34);
        session.setAttribute("values",valueData);

        String message ="\"All Problems Statistics\"";

        session.setAttribute("message",message);

        return "problemStats";
    }

    @RequestMapping(value = "/filterStats",method = RequestMethod.GET)
    public String showFilteredChart(HttpSession session){
        List<String> monthFilterData= new ArrayList<String>();
        monthFilterData.add("\"Jan\"");
        monthFilterData.add("\"Feb\"");
        monthFilterData.add("\"Mar\"");
        session.setAttribute("months",monthFilterData);

        List<Integer> valueData = new ArrayList<Integer>();
        valueData.add(23);
        valueData.add(22);
        valueData.add(40);
        session.setAttribute("values",valueData);

        String message ="\"Filter Problems Statistics\"";

        session.setAttribute("message",message);

        return "problemStats";
    }



}
