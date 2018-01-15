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
        requestStatistic.setRequestIssueDate("22-10-2016");
        requestStatistic.setDescription("Descr 1");
        requestStatistic.setInstitution("Institution 1");
        requestStatistic.setStartDate("20-11-2016");
        requestStatistic.setEndDate("26-11-2016");

        RequestStatistic requestStatistic2 = new RequestStatistic();
        requestStatistic2.setRequestIssueDate("22-10-2016");
        requestStatistic2.setDescription("Descr 1");
        requestStatistic2.setInstitution("Institution 1");
        requestStatistic2.setStartDate("20-11-2016");
        requestStatistic2.setEndDate("26-11-2016");

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
