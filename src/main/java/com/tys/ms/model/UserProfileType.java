package com.tys.ms.model;

import java.io.Serializable;

public enum UserProfileType implements Serializable {
    REG_EMP("REG_EMP"),
    USER("USER"),
    DBA("DBA"),
    ADMIN("ADMIN");

    String userProfileType;

    private UserProfileType(String userProfileType){
        this.userProfileType = userProfileType;
    }

    public String getUserProfileType(){
        return userProfileType;
    }
}
