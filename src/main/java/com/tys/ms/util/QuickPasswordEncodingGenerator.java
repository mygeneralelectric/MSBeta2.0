package com.tys.ms.util;

import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class QuickPasswordEncodingGenerator {
    /**
     * @param args
     */
    public static void main(String[] args) {
        String password = "123456";
        String encPwd = "$2a$10$PvGqFwjuip12RaQHcWUwa.8JAjxC06FKUXQb7yrUX2wRBN/Shw7H6";
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        System.out.println(passwordEncoder.encode(password));
        if (BCrypt.checkpw(password, encPwd)) {
            System.out.println("true");
        } else {
            System.out.println("false");
        }


    }
}
