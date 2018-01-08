package team6.uid.clujsolver.model;

import java.io.Serializable;

/**
 * Created by dell on 12/29/2017.
 */
public enum Category implements Serializable {
    SOCIAL_ASSISTANCE("Social assistance"),
    WASTE_STORAGE("Waste storage"),
    UNAUTHORIZED_CONSTRUCTIONS("Unauthorized constructions"),
    WORK_SITE_ORGANIZATION("Construction site organization"),
    PUBLIC_LIGHTING("Public lighting"),
    NON_REGULATORY_PARKING("Non-regulatory parking"),
    PARKING("Parking"),
    HOMELESS_PEOPLE_BEGGARS("Homeless people and beggars"),
    SANITATION("Sanitation"),
    GREEN_SPACES("Green spaces and Parks"),
    STREETS("Streets/Walkways/Sidewalks "),
    TAXES_FEES("Taxes and fees"),
    ROAD_SIGNALING("Road signaling"),
    PUBLIC_PEACE("Disturbance of public peace"),
    WATER("Water/Sewerage networks"),
    PUBLIC_TRANSPORT("Public transport"),
    OTHERS("Others");

    private String title;

    Category(String title) {
        this.title = title;
    }

    public String title() {
        return title;
    }

}
