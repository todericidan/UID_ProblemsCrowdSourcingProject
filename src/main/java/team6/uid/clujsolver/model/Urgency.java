package team6.uid.clujsolver.model;

import java.io.Serializable;

/**
 * Created by dell on 12/29/2017.
 */
public enum Urgency implements Serializable {
    HIGH("High"),
    MEDIUM("Medium"),
    LOW("Low"),
    ANY("Any");

    private String title;

    Urgency(String title) {
        this.title = title;
    }

    public String title() {
        return title;
    }
}
