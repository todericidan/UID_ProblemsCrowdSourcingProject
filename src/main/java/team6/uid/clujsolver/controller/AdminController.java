package team6.uid.clujsolver.controller;


import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import team6.uid.clujsolver.model.RequestStatistic;

@Controller
public class AdminController {

	private ArrayList<RequestStatistic> requestStatistics = new ArrayList<RequestStatistic>();

    public ArrayList<RequestStatistic> prepareStatistics(){
        RequestStatistic requestStatistic = new RequestStatistic();
        requestStatistic.setRequestIssueDate("22-10-2017");
        requestStatistic.setDescription("We would like to give a few rewards to our most involved citizens in the problems of the community");
        requestStatistic.setInstitution("Primaria Cluj");
        requestStatistic.setType("User situation");
        requestStatistic.setStartDate("01-01-2017");
        requestStatistic.setEndDate("31-12-2017");

        RequestStatistic requestStatistic2 = new RequestStatistic();
        requestStatistic2.setRequestIssueDate("10-01-2018");
        requestStatistic2.setDescription("We would like to get details about the places having a greater density of problems");
        requestStatistic2.setInstitution("Consiliul Local");
        requestStatistic2.setType("Problems situation");
        requestStatistic2.setStartDate("15-09-2017");
        requestStatistic2.setEndDate("15-01-2018");

        requestStatistics.add(requestStatistic);
        requestStatistics.add(requestStatistic2);
        return requestStatistics;
    }
	
	@RequestMapping(value = "/admin",method = RequestMethod.GET)
    public String showAdminPage(Model model){
		if(requestStatistics.size() == 0)
			requestStatistics = prepareStatistics();
        model.addAttribute("requests",requestStatistics);
        return "adminView";
    }

    
}
