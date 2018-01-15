package team6.uid.clujsolver.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import team6.uid.clujsolver.model.Category;
import team6.uid.clujsolver.model.Popularity;
import team6.uid.clujsolver.model.Status;
import team6.uid.clujsolver.model.Urgency;
import team6.uid.clujsorver.service.ProblemService;
import team6.uid.clujsorver.service.convertor.ProblemConvertor;

import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

@Controller
public class BrowsingProblemsController {

    private ProblemService service;

    @RequestMapping(value = "/problems",method = RequestMethod.GET)
    public String showCommunityProblems(HttpSession session){
        service = ProblemService.getInstance();

        if(session.getAttribute("firstUse") != null){
            session.setAttribute("firstUse",false);
        } else {
            session.setAttribute("firstUse",true);
        }

        if(session.getAttribute("problems") == null){
            session.setAttribute("problems",service.getProblems());
        }

        session.setAttribute("problemCategories", Category.values());
        session.setAttribute("popularityTypes", Popularity.values());
        session.setAttribute("statusTypes", Status.values());
        session.setAttribute("urgencyTypes", Urgency.values());

        return "communityProblemsView";
    }


    @RequestMapping(value = "/problemsReset",method = RequestMethod.GET)
    public String showCommunityInitialProblems(HttpSession session){
        service = ProblemService.getInstance();
        session.setAttribute("firstUse",false);
        session.setAttribute("problems",service.getProblems());
        return "communityProblemsView";
    }


    @RequestMapping(value = "/filterProblems/{category}/{status}/{popularity}/{urgency}/{date}",method = RequestMethod.GET)
    public String showFilteredProblems(@PathVariable("urgency") String urgency,
                                       @PathVariable("status") String status,
                                       @PathVariable("popularity") String popularity,
                                       @PathVariable("category") String category,
                                       @PathVariable("date") String startDateString,
                                       HttpSession session) {
        session.setAttribute("firstUse",false);
        service = ProblemService.getInstance();

        DateFormat format = new SimpleDateFormat("dd MMMM, yyyy", Locale.ENGLISH);
        Date startDate = null;

        try {
            startDate = format.parse(startDateString);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        Date today = new Date();

        Category cat = null ;
        switch (category) {
            case "SOCIAL_ASSISTANCE":
                cat = Category.SOCIAL_ASSISTANCE;
                break;
            case "WASTE_STORAGE":
                cat = Category.WASTE_STORAGE;
                break;
            case "UNAUTHORIZED_CONSTRUCTIONS":
                cat = Category.UNAUTHORIZED_CONSTRUCTIONS;
                break;
            case "WORK_SITE_ORGANIZATION":
                cat = Category.WORK_SITE_ORGANIZATION;
                break;
            case "PUBLIC_LIGHTING":
                cat = Category.PUBLIC_LIGHTING;
                break;
            case "NON_REGULATORY_PARKING":
                cat = Category.NON_REGULATORY_PARKING;
                break;
            case "PARKING":
                cat = Category.PARKING;
                break;
            case "HOMELESS_PEOPLE_BEGGARS":
                cat = Category.HOMELESS_PEOPLE_BEGGARS;
                break;
            case "SANITATION":
                cat = Category.SANITATION;
                break;
            case "GREEN_SPACES":
                cat = Category.GREEN_SPACES;
                break;
            case "STREETS":
                cat = Category.STREETS;
                break;
            case "TAXES_FEES":
                cat = Category.TAXES_FEES;
                break;
            case "ROAD_SIGNALING":
                cat = Category.ROAD_SIGNALING;
                break;
            case "PUBLIC_PEACE":
                cat = Category.PUBLIC_PEACE;
                break;
            case "WATER":
                cat = Category.WATER;
                break;
            case "PUBLIC_TRANSPORT":
                cat = Category.PUBLIC_TRANSPORT;
                break;
            case "OTHERS":
                cat = Category.OTHERS;
                break;
            default:
                cat = Category.ANY;
        }

        Status sta = null;
        switch (status) {
            case "UNSOLVED":
                sta = Status.UNSOLVED;
                break;
            case "NOW_SOLVING":
                sta = Status.NOW_SOLVING;
                break;
            case "SOLVED":
                sta = Status.SOLVED;
                break;
            default:
                sta = Status.ANY;
        }

        Urgency urg = null;
        switch (urgency) {
            case "HIGH":
                urg = Urgency.HIGH;
                break;
            case "MEDIUM":
                urg = Urgency.MEDIUM;
                break;
            case "LOW":
                urg = Urgency.LOW;
                break;
            default:
                urg = Urgency.ANY;
        }

        Popularity pop = null;
        switch (popularity) {
            case "POPULAR":
                pop = Popularity.POPULAR;
                break;
            case "AVERAGE":
                pop = Popularity.AVERAGE;
                break;
            case "UNPOPULAR":
                pop = Popularity.UNPOPULAR;
                break;
            default:
                pop = Popularity.ANY;
        }

        if(today.before(startDate)) {
            service.applyFilters(cat, sta, urg, pop,format.format(today) ,startDateString);
        }else{
            service.applyFilters(cat, sta, urg, pop,startDateString,format.format(today) );
        }

        session.setAttribute("problems",service.getProblems());

        return "communityProblemsView";
    }

    @RequestMapping(value = "/filterProblems/{category}/{status}/{popularity}/{urgency}/{startDate}/{stopDate}",method = RequestMethod.GET)
    public String showFilteredProblems(@PathVariable("urgency") String urgency,
                                       @PathVariable("status") String status,
                                       @PathVariable("popularity") String popularity,
                                       @PathVariable("category") String category,
                                       @PathVariable("startDate") String startDateString,
                                       @PathVariable("stopDate") String stopDateString,
                                       HttpSession session) {
        service = ProblemService.getInstance();
        session.setAttribute("firstUse",false);

        DateFormat format = new SimpleDateFormat("dd MMMM, yyyy", Locale.ENGLISH);
        Date startDate = null;
        Date stopDate =null;

        try {
            startDate = format.parse(startDateString);
            stopDate = format.parse(stopDateString);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        Category cat = null ;
        switch (category) {
            case "SOCIAL_ASSISTANCE":
                cat = Category.SOCIAL_ASSISTANCE;
                break;
            case "WASTE_STORAGE":
                cat = Category.WASTE_STORAGE;
                break;
            case "UNAUTHORIZED_CONSTRUCTIONS":
                cat = Category.UNAUTHORIZED_CONSTRUCTIONS;
                break;
            case "WORK_SITE_ORGANIZATION":
                cat = Category.WORK_SITE_ORGANIZATION;
                break;
            case "PUBLIC_LIGHTING":
                cat = Category.PUBLIC_LIGHTING;
                break;
            case "NON_REGULATORY_PARKING":
                cat = Category.NON_REGULATORY_PARKING;
                break;
            case "PARKING":
                cat = Category.PARKING;
                break;
            case "HOMELESS_PEOPLE_BEGGARS":
                cat = Category.HOMELESS_PEOPLE_BEGGARS;
                break;
            case "SANITATION":
                cat = Category.SANITATION;
                break;
            case "GREEN_SPACES":
                cat = Category.GREEN_SPACES;
                break;
            case "STREETS":
                cat = Category.STREETS;
                break;
            case "TAXES_FEES":
                cat = Category.TAXES_FEES;
                break;
            case "ROAD_SIGNALING":
                cat = Category.ROAD_SIGNALING;
                break;
            case "PUBLIC_PEACE":
                cat = Category.PUBLIC_PEACE;
                break;
            case "WATER":
                cat = Category.WATER;
                break;
            case "PUBLIC_TRANSPORT":
                cat = Category.PUBLIC_TRANSPORT;
                break;
            case "OTHERS":
                cat = Category.OTHERS;
                break;
            default:
                cat = Category.ANY;
        }

        Status sta = null;
        switch (status) {
            case "UNSOLVED":
                sta = Status.UNSOLVED;
                break;
            case "NOW_SOLVING":
                sta = Status.NOW_SOLVING;
                break;
            case "SOLVED":
                sta = Status.SOLVED;
                break;
            default:
                sta = Status.ANY;
        }

        Urgency urg = null;
        switch (urgency) {
            case "HIGH":
                urg = Urgency.HIGH;
                break;
            case "MEDIUM":
                urg = Urgency.MEDIUM;
                break;
            case "LOW":
                urg = Urgency.LOW;
                break;
            default:
                urg = Urgency.ANY;
        }

        Popularity pop = null;
        switch (popularity) {
            case "POPULAR":
                pop = Popularity.POPULAR;
                break;
            case "AVERAGE":
                pop = Popularity.AVERAGE;
                break;
            case "UNPOPULAR":
                pop = Popularity.UNPOPULAR;
                break;
            default:
                pop = Popularity.ANY;
        }


        if(startDate.before(stopDate)) {
            session.setAttribute("problems", service.applyFilters(cat, sta, urg, pop, startDateString, stopDateString));
        }else{
            session.setAttribute("problems", service.applyFilters(cat, sta, urg, pop, stopDateString, startDateString));
        }

        return "communityProblemsView";
    }


    @RequestMapping(value = "/filterProblems/{category}/{status}/{popularity}/{urgency}",method = RequestMethod.GET)
    public String showFilteredProblems(@PathVariable("urgency") String urgency,
                                       @PathVariable("status") String status,
                                       @PathVariable("popularity") String popularity,
                                       @PathVariable("category") String category,
                                       HttpSession session) {
        service = ProblemService.getInstance();
        session.setAttribute("firstUse",false);


        Category cat = null ;
        switch (category) {
            case "SOCIAL_ASSISTANCE":
                cat = Category.SOCIAL_ASSISTANCE;
                break;
            case "WASTE_STORAGE":
                cat = Category.WASTE_STORAGE;
                break;
            case "UNAUTHORIZED_CONSTRUCTIONS":
                cat = Category.UNAUTHORIZED_CONSTRUCTIONS;
                break;
            case "WORK_SITE_ORGANIZATION":
                cat = Category.WORK_SITE_ORGANIZATION;
                break;
            case "PUBLIC_LIGHTING":
                cat = Category.PUBLIC_LIGHTING;
                break;
            case "NON_REGULATORY_PARKING":
                cat = Category.NON_REGULATORY_PARKING;
                break;
            case "PARKING":
                cat = Category.PARKING;
                break;
            case "HOMELESS_PEOPLE_BEGGARS":
                cat = Category.HOMELESS_PEOPLE_BEGGARS;
                break;
            case "SANITATION":
                cat = Category.SANITATION;
                break;
            case "GREEN_SPACES":
                cat = Category.GREEN_SPACES;
                break;
            case "STREETS":
                cat = Category.STREETS;
                break;
            case "TAXES_FEES":
                cat = Category.TAXES_FEES;
                break;
            case "ROAD_SIGNALING":
                cat = Category.ROAD_SIGNALING;
                break;
            case "PUBLIC_PEACE":
                cat = Category.PUBLIC_PEACE;
                break;
            case "WATER":
                cat = Category.WATER;
                break;
            case "PUBLIC_TRANSPORT":
                cat = Category.PUBLIC_TRANSPORT;
                break;
            case "OTHERS":
                cat = Category.OTHERS;
                break;
            default:
                cat = Category.ANY;
        }

        Status sta = null;
        switch (status) {
            case "UNSOLVED":
                sta = Status.UNSOLVED;
                break;
            case "NOW_SOLVING":
                sta = Status.NOW_SOLVING;
                break;
            case "SOLVED":
                sta = Status.SOLVED;
                break;
            default:
                sta = Status.ANY;
        }

        Urgency urg = null;
        switch (urgency) {
            case "HIGH":
                urg = Urgency.HIGH;
                break;
            case "MEDIUM":
                urg = Urgency.MEDIUM;
                break;
            case "LOW":
                urg = Urgency.LOW;
                break;
            default:
                urg = Urgency.ANY;
        }

        Popularity pop = null;
        switch (popularity) {
            case "POPULAR":
                pop = Popularity.POPULAR;
                break;
            case "AVERAGE":
                pop = Popularity.AVERAGE;
                break;
            case "UNPOPULAR":
                pop = Popularity.UNPOPULAR;
                break;
            default:
                pop = Popularity.ANY;
        }

        session.setAttribute("problems", service.applyFilters(cat, sta, urg, pop));

        return "communityProblemsView";
    }


    
}
