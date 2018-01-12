package team6.uid.clujsolver.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import team6.uid.clujsolver.model.Category;
import team6.uid.clujsolver.model.Popularity;
import team6.uid.clujsolver.model.Status;
import team6.uid.clujsolver.model.Urgency;
import team6.uid.clujsorver.service.convertor.ProblemConvertor;

import javax.servlet.http.HttpSession;

@Controller
public class BrowsingProblemsController {

    @RequestMapping(value = "/problems",method = RequestMethod.GET)
    public String showCommunityProblems(HttpSession session){


        if(session.getAttribute("firstUse") != null){
            session.setAttribute("firstUse",false);
        } else {
            session.setAttribute("firstUse",true);
        }

        if(session.getAttribute("problems") == null){
            session.setAttribute("problems",new ProblemConvertor().fromJsonToList("problems.json"));
        }

        session.setAttribute("problemCategories", Category.values());
        session.setAttribute("popularityTypes", Popularity.values());
        session.setAttribute("statusTypes", Status.values());
        session.setAttribute("urgencyTypes", Urgency.values());

        return "communityProblemsView";
    }

    
}
