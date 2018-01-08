package team6.uid.clujsolver.model;

import java.io.Serializable;

/**
 * Created by dell on 12/29/2017.
 */
public enum Popularity implements Serializable {
    POPULAR("Popular"),
    AVERAGE("Average"),
    UNPOPULAR("Unpopular");

    private String title;

    Popularity(String title) {
        this.title = title;
    }

    public String title() {
        return title;
    }
}
