package team6.uid.clujsolver.model;

/**
 * Created by dell on 12/29/2017.
 */
public enum Status {
    UNSOLVED("Unsolved"),
    NOW_SOLVING("Currently solving"),
    SOLVED("Solved");

    private String title;

    Status(String title) {
        this.title = title;
    }

    public String title() {
        return title;
    }
}
