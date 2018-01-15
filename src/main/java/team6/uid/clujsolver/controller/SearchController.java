package team6.uid.clujsolver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import team6.uid.clujsorver.service.ProblemService;

import javax.servlet.http.HttpSession;

@Controller
public class SearchController {
    private ProblemService service;
    @RequestMapping(value = "/searchResults",method = RequestMethod.GET)
    public String showSearchResults(){
        return "searchResultsView";
    }

    @RequestMapping(value = "/searchResults/{key}",method = RequestMethod.GET)
    public String showSearchResults(@PathVariable("key") String key, HttpSession session){
        service = ProblemService.getInstance();
        session.setAttribute("keyMessage", key);
        session.setAttribute("problemsSearchList", service.search(key));
        return "searchResultsView";
    }

}
