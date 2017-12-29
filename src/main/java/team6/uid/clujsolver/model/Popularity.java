package team6.uid.clujsolver.model;

/**
 * Created by dell on 12/29/2017.
 */
public enum Popularity {
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
