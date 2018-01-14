package team6.uid.clujsolver.model;

/**
 * Created by todericidan on 1/14/2018.
 */
public class RankLine {
    private int id;
    private String username;
    private int score;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("RankLine{");
        sb.append("id=").append(id);
        sb.append(", username='").append(username).append('\'');
        sb.append(", score=").append(score);
        sb.append('}');
        sb.append('\n');
        return sb.toString();
    }
}
