package team6.uid.clujsolver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import team6.uid.clujsorver.service.convertor.RankLinesConvertor;

import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

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
        monthFilterData.add("\"Nov,2017\"");
        monthFilterData.add("\"Dec,2017\"");
        monthFilterData.add("\"Jan,2018\"");
        session.setAttribute("months",monthFilterData);

        List<Integer> valueData = new ArrayList<Integer>();
        valueData.add(68);
        valueData.add(22);
        valueData.add(40);
        session.setAttribute("values",valueData);

        String message ="\"Filtered Problems Statistics\"";

        session.setAttribute("message",message);

        return "problemStats";
    }



    @RequestMapping(value = "/filterStats/{date}",method = RequestMethod.GET)
    public String showFilteredChart(@PathVariable("date") String startDate,HttpSession session){
        List<String> monthFilterData= new ArrayList<String>();
        List<Integer> valueData = new ArrayList<Integer>();
        Random random = new Random();

        DateFormat format = new SimpleDateFormat("dd MMMM,yyyy", Locale.ENGLISH);
        Date start = null;
        Date stop = new Date();


        try {
            start = format.parse(startDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }


        long diff = stop.getTime() - start.getTime();

        for (int i = 0; i <10 ; i++) {
            long d = i*(diff/10)  +start.getTime();
            Date dateAdd= new Date(d);
            SimpleDateFormat sdf = new SimpleDateFormat("dd/M/yyyy");
            String stringAdd= sdf.format(dateAdd);
            monthFilterData.add("\"" + stringAdd+"\"");

            int value = random.nextInt((80 - 20) + 1) + 20;
            valueData.add(value);
        }

        session.setAttribute("months",monthFilterData);

        session.setAttribute("values",valueData);

        String message ="\"Problems Statistics from " +startDate+" to "+format.format(stop) +"\"";

        session.setAttribute("message",message);

        return "problemStats";
    }



    @RequestMapping(value = "/filterStats/{startDate}/{stopDate}",method = RequestMethod.GET)
    public String showFilteredChart(@PathVariable("startDate") String startDate,@PathVariable("stopDate") String stopDate,HttpSession session){
        List<String> monthFilterData= new ArrayList<String>();
        List<Integer> valueData = new ArrayList<Integer>();
        Random random = new Random();

        DateFormat format = new SimpleDateFormat("dd MMMM,yyyy", Locale.ENGLISH);
        Date start = null;
        Date stop = null;


        try {
            start = format.parse(startDate);
            stop = format.parse(stopDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }


        long diff = stop.getTime() - start.getTime();

        for (int i = 0; i <10 ; i++) {
            long d = i*(diff/10)  +start.getTime();
            Date dateAdd= new Date(d);
            SimpleDateFormat sdf = new SimpleDateFormat("dd/M/yyyy");
            String stringAdd= sdf.format(dateAdd);
            monthFilterData.add("\"" + stringAdd+"\"");

            int value = random.nextInt((80 - 20) + 1) + 20;
            valueData.add(value);
        }

        session.setAttribute("months",monthFilterData);

        session.setAttribute("values",valueData);

        String message ="\"Problems Statistics from " +startDate+" to "+stopDate +"\"";

        session.setAttribute("message",message);

        return "problemStats";
    }



}
