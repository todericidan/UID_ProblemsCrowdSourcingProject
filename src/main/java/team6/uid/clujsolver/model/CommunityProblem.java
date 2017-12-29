package team6.uid.clujsolver.model;

import java.util.Date;
import java.util.List;

/**
 * Created by dell on 12/29/2017.
 */
public class CommunityProblem {
    private String title;
    private String description;
    private double latitude;
    private double longitude;
    private String address;
    private Urgency urgencyLevel;
    private Category category;
    private Date submissionDate;
    private Status status;
    private List<String> imageUrl;
    private int upVotes = 0;
    private int downVotes = 0;
    private int validations = 0;
    private List<String> comments;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Urgency getUrgencyLevel() {
        return urgencyLevel;
    }

    public void setUrgencyLevel(Urgency urgencyLevel) {
        this.urgencyLevel = urgencyLevel;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Date getSubmissionDate() {
        return submissionDate;
    }

    public void setSubmissionDate(Date submissionDate) {
        this.submissionDate = submissionDate;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public List<String> getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(List<String> imageUrl) {
        this.imageUrl = imageUrl;
    }

    public int getUpVotes() {
        return upVotes;
    }

    public void setUpVotes(int upVotes) {
        this.upVotes = upVotes;
    }

    public int getDownVotes() {
        return downVotes;
    }

    public void setDownVotes(int downVotes) {
        this.downVotes = downVotes;
    }

    public int getValidations() {
        return validations;
    }

    public void setValidations(int validations) {
        this.validations = validations;
    }

    public List<String> getComments() {
        return comments;
    }

    public void setComments(List<String> comments) {
        this.comments = comments;
    }
}
