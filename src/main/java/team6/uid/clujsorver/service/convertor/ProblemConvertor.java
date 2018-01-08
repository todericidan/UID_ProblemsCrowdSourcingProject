package team6.uid.clujsorver.service.convertor;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import team6.uid.clujsolver.model.CommunityProblem;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Scanner;

/**
 * Created by todericidan on 1/8/2018.
 */
public class ProblemConvertor {
   public List<CommunityProblem> fromJsonToList(String fileName){

        ClassLoader classLoader = getClass().getClassLoader();
        File file = new File(classLoader.getResource(fileName).getFile());

        ObjectMapper mapper = new ObjectMapper();

        StringBuilder buff = new StringBuilder("");
        try(Scanner sc = new Scanner(file)){
            while(sc.hasNextLine()){
                String line = sc.nextLine();
                buff.append(line);

            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        //System.out.println(buff);

        TypeReference<List<CommunityProblem>> mapType = new TypeReference<List<CommunityProblem>>() {};
        List<CommunityProblem> jsonToProblemsList = null;
        try {
            jsonToProblemsList = mapper.readValue(buff.toString(), mapType);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return jsonToProblemsList;
    }


}

