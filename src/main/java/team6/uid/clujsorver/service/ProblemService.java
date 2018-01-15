package team6.uid.clujsorver.service;

import com.sun.org.apache.bcel.internal.generic.POP;
import team6.uid.clujsolver.model.*;
import team6.uid.clujsorver.service.convertor.ProblemConvertor;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * Created by todericidan on 1/10/2018.
 */
public class ProblemService {
    private List<CommunityProblem> problems;
    private ProblemConvertor convertor;
    private static ProblemService instance = null;

    private ProblemService() {
        convertor = new ProblemConvertor();
       problems = convertor.fromJsonToList("problems.json");
    }

    public static ProblemService getInstance(){
        if(instance == null) {
            instance = new ProblemService();
            instance.setProblems(new ProblemConvertor().fromJsonToList("problems.json"));
        }
        return instance;

    }

    public void addProblem(CommunityProblem problem){
        problems.add(problem);
    }

    public void removeProblem(String id){
        List<CommunityProblem> list = new ArrayList<CommunityProblem>();
        for(CommunityProblem p: problems){
            if(!p.getId().equals(id)){
                list.add(p);
            }
        }
        problems =  list;
    }


    public List<CommunityProblem> applyFilters(Category filterCategory,
                                               Status filterStatus,
                                               Urgency filterUrgency,
                                               Popularity filterPopularity,
                                               String startDateString,
                                               String stopDateString){
        List<CommunityProblem> list = new ArrayList<CommunityProblem>();

        DateFormat format = new SimpleDateFormat("dd MMMM, yyyy", Locale.ENGLISH);
        Date startDate = null;
        Date stopDate = null;
        Date date = null;

        for(CommunityProblem p: problems) {
            int flag =1;

            if((!startDateString.equals("")) && (!stopDateString.equals(""))){
                try {
                    startDate = format.parse(startDateString);
                    stopDate = format.parse(stopDateString);
                    date = format.parse(p.getDate());
                } catch (ParseException e) {
                    e.printStackTrace();
                }

                if(!((startDate.before(date) || startDate.equals(date)) && ( stopDate.after(date) ||  stopDate.equals(date) ))){
                    flag = 0;
                }
            }

            if((!startDateString.equals("")) && (stopDateString.equals(""))){
                try {
                    startDate = format.parse(startDateString);
                    date = format.parse(p.getDate());
                } catch (ParseException e) {
                    e.printStackTrace();
                }

                if(!( (startDate.before(date)) || (startDate.equals(date)) )){
                    flag = 0;
                }
            }

            if((startDateString.equals("")) && (!stopDateString.equals(""))) {
                try {
                    stopDate = format.parse(stopDateString);
                    date = format.parse(p.getDate());
                } catch (ParseException e) {
                    e.printStackTrace();
                }

                if(!(stopDate.after(date)|| stopDate.equals(date))){
                    flag = 0;
                }
            }

            if(!filterCategory.equals(Category.ANY)) {
                if (!filterCategory.equals(p.getCategory())) {
                    flag = 0;
                }
            }
            if(!filterStatus.equals(Status.ANY)){
                if(!filterStatus.equals(p.getStatus())){
                    flag = 0;
                }
            }
            if(!filterPopularity.equals(Popularity.ANY)){
                //on the spot decision
                if((p.getUpVotes()-p.getDownVotes()<80)&&(filterPopularity.equals(Popularity.POPULAR))){
                    flag = 0;
                }
                if((p.getUpVotes()-p.getDownVotes()<0)&&(filterPopularity.equals(Popularity.AVERAGE))){
                    flag = 0;
                }
                if((p.getUpVotes()-p.getDownVotes()>0)&&(filterPopularity.equals(Popularity.UNPOPULAR))){
                    flag = 0;
                }
            }
            if(!filterUrgency.equals(Urgency.ANY)){
                if(!filterUrgency.equals(p.getUrgencyLevel())){
                    flag = 0;
                }
            }

            if(flag == 1){
               list.add(p);
            }

        }

        return list;
    }


    public List<CommunityProblem> applyFilters(Category filterCategory,
                                               Status filterStatus,
                                               Urgency filterUrgency,
                                               Popularity filterPopularity){
        List<CommunityProblem> list = new ArrayList<CommunityProblem>();


        for(CommunityProblem p: problems) {
            int flag =1;

            if(!filterCategory.equals(Category.ANY)) {
                if (!filterCategory.equals(p.getCategory())) {
                    flag = 0;
                }
            }
            if(!filterStatus.equals(Status.ANY)){
                if(!filterStatus.equals(p.getStatus())){
                    flag = 0;
                }
            }
            if(!filterPopularity.equals(Popularity.ANY)){
                if((p.getUpVotes()-p.getDownVotes()<80)&&(filterPopularity.equals(Popularity.POPULAR))){
                    flag = 0;
                }
                if((p.getUpVotes()-p.getDownVotes()<0)&&(filterPopularity.equals(Popularity.AVERAGE))){
                    flag = 0;
                }
                if((p.getUpVotes()-p.getDownVotes()>0)&&(filterPopularity.equals(Popularity.UNPOPULAR))){
                    flag = 0;
                }
            }

            if(!filterUrgency.equals(Urgency.ANY)){
                if(!filterUrgency.equals(p.getUrgencyLevel())){
                    flag = 0;
                }
            }

            if(flag == 1){
                list.add(p);
            }

        }

        return list;
    }



    public List<CommunityProblem> search(String keyWords){
        List<CommunityProblem> list = new ArrayList<CommunityProblem>();
        for(CommunityProblem p: problems) {
            if(p.getAddress().contains(keyWords) ||p.getTitle().contains(keyWords) || p.getDescription().contains(keyWords) ){
                list.add(p);
            }
        }
        return list;
    }

    public CommunityProblem getProblemById(String id){
        List<CommunityProblem> problems = getProblems();
        for(CommunityProblem problem :problems){
            if(problem.getId().equals(id)){
                return problem;
            }
        }
        return null;
    }

    public void upVoteProblem(String id){
        CommunityProblem problem = getProblemById(id);
        problem.setUpVotes(problem.getUpVotes() + 1);
        removeProblem(id);
        addProblem(problem);
    }

    public void downVoteProblem(String id){
        CommunityProblem problem = getProblemById(id);
        problem.setDownVotes(problem.getDownVotes() + 1);
        removeProblem(id);
        addProblem(problem);
    }

    public void addValidation(String id){
        CommunityProblem problem = getProblemById(id);
        problem.setValidations(problem.getValidations() + 1);
        removeProblem(id);
        addProblem(problem);
    }

    public void changeStatus(String id, Status status){
        CommunityProblem problem = getProblemById(id);
        problem.setStatus(status);
        removeProblem(id);
        addProblem(problem);
    }

    public void changeCategory(String id, Category category){
        CommunityProblem problem = getProblemById(id);
        problem.setCategory(category);
        removeProblem(id);
        addProblem(problem);
    }


    public List<CommunityProblem> getProblems() {
        return problems;
    }

    public void setProblems(List<CommunityProblem> problems) {
        this.problems = problems;
    }

}
