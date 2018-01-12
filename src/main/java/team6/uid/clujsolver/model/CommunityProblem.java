package team6.uid.clujsolver.model;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dell on 12/29/2017.
 */
public class CommunityProblem {
    private String id;
    private String title;
    private String description;
    private double latitude;
    private double longitude;
    private String address;
    private Urgency urgencyLevel;
    private Category category;
    private String date;
    private String solvingDate;
    private Status status;
    private List<String> imageUrls;
    private int upVotes = 0;
    private int downVotes = 0;
    private int validations = 0;
    private List<Comment> comments = new ArrayList<>();

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

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

    public String getSolvingDate() {
        return solvingDate;
    }

    public void setSolvingDate(String solvingDate) {
        this.solvingDate = solvingDate;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public List<String> getImageUrls() {
        return imageUrls;
    }

    public void setImageUrls(List<String> imageUrl) {
        this.imageUrls = imageUrl;
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

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("CommunityProblem{");
        sb.append("id='").append(id).append('\'');
        sb.append(", title='").append(title).append('\'');
        sb.append(", description='").append(description).append('\'');
        sb.append(", latitude=").append(latitude);
        sb.append(", longitude=").append(longitude);
        sb.append(", address='").append(address).append('\'');
        sb.append(", urgencyLevel=").append(urgencyLevel);
        sb.append(", category=").append(category);
        sb.append(", date='").append(date).append('\'');
        sb.append(", solvingDate=").append(solvingDate);
        sb.append(", status=").append(status);
        sb.append(", imageUrls=").append(imageUrls);
        sb.append(", upVotes=").append(upVotes);
        sb.append(", downVotes=").append(downVotes);
        sb.append(", validations=").append(validations);
        sb.append(", comments=").append(comments);
        sb.append('}');
        sb.append('\n');
        return sb.toString();
    }
}
