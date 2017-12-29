package team6.uid.clujsolver.model;

/**
 * Created by dell on 12/29/2017.
 */
public enum Urgency {
    HIGH("High"),
    MEDIUM("Medium"),
    LOW("Low");

    private String title;

    Urgency(String title) {
        this.title = title;
    }

    public String title() {
        return title;
    }
}
