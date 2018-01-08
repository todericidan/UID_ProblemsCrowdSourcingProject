package team6.uid.clujsolver.model;

/**
 * Created by todericidan on 1/8/2018.
 */
public class Comment {
    private String username;
    private String text;

    public Comment(String username, String text) {
        this.username = username;
        this.text = text;
    }

    public Comment() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("Comment{");
        sb.append("username='").append(username).append('\'');
        sb.append(", text='").append(text).append('\'');
        sb.append('}');
        return sb.toString();
    }
}

