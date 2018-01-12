package team6.uid.clujsolver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import team6.uid.clujsolver.model.Category;
import team6.uid.clujsolver.model.CommunityProblem;
import team6.uid.clujsolver.model.Status;
import team6.uid.clujsolver.model.Urgency;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/**
 * Created by dell on 12/29/2017.
 */
@Controller
public class SignalProblemController {

    @RequestMapping(value = "/newProblem",method = RequestMethod.GET)
    public String showLoginPage(){

        return "signalProblemView";
    }

    @RequestMapping(value="/addProblem", method = RequestMethod.POST)
    public String addProblem(
            @RequestParam String street,
            @RequestParam String latitude,
            @RequestParam String longitude,
            @RequestParam String title,
            @RequestParam String category,
            @RequestParam String description,
            @RequestParam String urgency,
            HttpSession session
            ){

        List<CommunityProblem> problems = (List<CommunityProblem>) session.getAttribute("problems");
        CommunityProblem problem = new CommunityProblem();

        Integer id = problems.size();
        problem.setId(id.toString());
        problem.setTitle(title);
        problem.setDescription(description);
        problem.setLatitude(Double.parseDouble(latitude));
        problem.setLongitude(Double.parseDouble(longitude));
        problem.setAddress("Avram Iancu Street, no. 6");
        problem.setUrgencyLevel(Urgency.valueOf(urgency));
        problem.setCategory(Category.valueOf(category));
        problem.setDate(new SimpleDateFormat("MMMM dd, yyyy").format(Calendar.getInstance().getTime()));
        problem.setStatus(Status.UNSOLVED);

        List<String> imageUrls = new ArrayList<>();
        imageUrls.add("https://bathwick.mycouncillor.org.uk/files/2012/02/North-Rd-damaged-sign.jpg");

        problem.setImageUrls(imageUrls);

        problems.add(problem);

        session.setAttribute("problems",problems);

        return "communityProblemsView";
    }
}
