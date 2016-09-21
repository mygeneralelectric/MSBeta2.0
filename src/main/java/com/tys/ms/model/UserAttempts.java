package com.tys.ms.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "USER_ATTEMPTS")
public class UserAttempts {
    @Id
    private int id;

    @Column(name="USERNAME", unique=true, nullable=false)
    private String username;

    @Column(name="ATTEMPTS", nullable=false)
    private int attempts;

    @Temporal(TemporalType.TIMESTAMP)
    private Date lastModified;

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

    public int getAttempts() {
        return attempts;
    }

    public void setAttempts(int attempts) {
        this.attempts = attempts;
    }

    public Date getLastModified() {
        return lastModified;
    }

    public void setLastModified(Date lastModified) {
        this.lastModified = lastModified;
    }
}
