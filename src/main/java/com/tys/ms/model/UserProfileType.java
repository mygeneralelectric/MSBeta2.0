package com.tys.ms.model;

import java.io.Serializable;

public enum UserProfileType implements Serializable {
    REGULAR("REGULAR"),
    GROUP("GROUP"),
    AREA("AREA"),
    ADMIN("ADMIN");

    String userProfileType;

    private UserProfileType(String userProfileType){
        this.userProfileType = userProfileType;
    }

    public String getUserProfileType(){
        return userProfileType;
    }
}
