package team6.uid.clujsolver.model;

public class RequestStatistic {

    private String requestIssueDate;
    private String institution;
    private String description;
    private String startDate;
    private String endDate;


    public RequestStatistic() {
    }

    public String getRequestIssueDate() {
        return requestIssueDate;
    }

    public void setRequestIssueDate(String requestIssueDate) {
        this.requestIssueDate = requestIssueDate;
    }

    public String getInstitution() {
        return institution;
    }

    public void setInstitution(String institution) {
        this.institution = institution;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }
}
