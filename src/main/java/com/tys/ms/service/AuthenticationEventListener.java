package com.tys.ms.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.context.event.EventListener;
import org.springframework.security.access.event.AuthorizationFailureEvent;
import org.springframework.security.authentication.event.AuthenticationFailureBadCredentialsEvent;
import org.springframework.security.authentication.event.AuthenticationSuccessEvent;
import org.springframework.security.core.session.SessionDestroyedEvent;
import org.springframework.stereotype.Component;

@Component
public class AuthenticationEventListener {
    @EventListener
    public void handleAuthenticationFailed(AuthorizationFailureEvent event) {


        System.out.println("--------------------> bad Authentication");

//        String username = (String) event.getAuthentication().getPrincipal();
        System.out.println("--------------------> bad Authentication");
    }

    @EventListener
    public void handleAuthenticationSucceeded(AuthenticationSuccessEvent event) {

//        String username = (String) event.getAuthentication().getPrincipal();
        System.out.println("--------------------> good Authentication");
    }

    @EventListener
    public void handleContextRefresh(ContextRefreshedEvent event) {
        System.out.println("--------------------> ContextRefreshedEvent");
    }

    @EventListener
    public void handleSession(SessionDestroyedEvent event) {
        System.out.println("-------------------->SessionDestroyedEvent");

    }

}
