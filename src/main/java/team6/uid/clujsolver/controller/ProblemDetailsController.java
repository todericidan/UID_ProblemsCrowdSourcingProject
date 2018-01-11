package team6.uid.clujsolver.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import team6.uid.clujsolver.model.Category;
import team6.uid.clujsolver.model.CommunityProblem;
import team6.uid.clujsolver.model.Status;
import team6.uid.clujsolver.model.Urgency;
import team6.uid.clujsorver.service.ProblemService;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


@Controller
public class ProblemDetailsController {

    ProblemService problemService = ProblemService.getInstance();

    @RequestMapping(value = "/problemDetails",method = RequestMethod.GET)
    public String showLoginPage(HttpSession session, Model model){
        session.setAttribute("problemCategories", Category.values());

        List<String> images = new ArrayList<String>();
        images.add("img/singleProblem.PNG");
        CommunityProblem communityProblem = new CommunityProblem();
        communityProblem.setId("1");
        communityProblem.setAddress("Str Louis Pasteur nr.23");
        communityProblem.setCategory(Category.GREEN_SPACES);
        communityProblem.setComments(null);
        communityProblem.setDate("12-25-2017");
        communityProblem.setDescription("descr");
        communityProblem.setDownVotes(5);
        communityProblem.setUpVotes(2);
        communityProblem.setLongitude(24.34);
        communityProblem.setLatitude(24.55);
        communityProblem.setStatus(Status.NOW_SOLVING);
        communityProblem.setSolvingDate("11-12-2017");
        communityProblem.setTitle("Parked laican S hole");
        communityProblem.setUrgencyLevel(Urgency.HIGH);
        communityProblem.setValidations(12);
        communityProblem.setImageUrls(images);

        model.addAttribute("problem",communityProblem);

        return "problemDetails";
    }
    @RequestMapping(value = "/upVote/{problemId}",method = RequestMethod.GET)
    public String upVote(@PathVariable("problemId") String id, Model model){
        problemService.upVoteProblem(id);
        CommunityProblem communityProblem = problemService.getProblemById(id);
        model.addAttribute("problem", communityProblem);
        return "problemDetails";
    }

    @RequestMapping(value = "/downVote/{problemId}",method = RequestMethod.GET)
    public String downVote(@PathVariable("problemId") String id, Model model){
        problemService.downVoteProblem(id);
        CommunityProblem communityProblem = problemService.getProblemById(id);
        model.addAttribute("problem", communityProblem);
        return "problemDetails";
    }

    @RequestMapping(value = "/validate/{problemId}",method = RequestMethod.GET)
    public String validate(@PathVariable("problemId") String id, Model model){
        problemService.addValidation(id);
        CommunityProblem communityProblem = problemService.getProblemById(id);
        model.addAttribute("problem", communityProblem);
        return "problemDetails";
    }

    @RequestMapping(value = "/changeStatus/{problemId}",method = RequestMethod.GET)
    public String chageStatus(@PathVariable("problemId") String id, Model model){
        problemService.changeStatus(id,Status.SOLVED);
        CommunityProblem communityProblem = problemService.getProblemById(id);
        model.addAttribute("problem", communityProblem);
        return "problemDetails";
    }

    @RequestMapping(value = "/changeType/{problemId}",method = RequestMethod.GET)
    public String chageType(@PathVariable("problemId") String id, Model model){
        problemService.changeCategory(id,Category.PARKING);
        CommunityProblem communityProblem = problemService.getProblemById(id);
        model.addAttribute("problem", communityProblem);
        return "problemDetails";
    }
}
