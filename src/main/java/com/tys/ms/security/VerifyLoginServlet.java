package com.tys.ms.security;

import com.geetest.sdk.java.GeetestLib;
import com.geetest.sdk.java.web.demo.GeetestConfig;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Administrator on 2016/9/26.
 */
public class VerifyLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 244554953219893949L;

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {

        GeetestLib gtSdk = new GeetestLib(GeetestConfig.getGeetest_id(), GeetestConfig.getGeetest_key());

        String challenge = request.getParameter(GeetestLib.fn_geetest_challenge);
        String validate = request.getParameter(GeetestLib.fn_geetest_validate);
        String seccode = request.getParameter(GeetestLib.fn_geetest_seccode);

        //从session中获取gt-server状态
        int gt_server_status_code = (Integer) request.getSession().getAttribute(gtSdk.gtServerStatusSessionKey);

        String gtResult = "fail";

        if (gt_server_status_code == 1) {
            //gt-server正常，向gt-server进行二次验证
            gtResult = String.valueOf(gtSdk.enhencedValidateRequest(challenge, validate, seccode)) ;
            System.out.println(gtResult);
        } else {
            // gt-server非正常情况下，进行failback模式验证
            gtResult = String.valueOf(gtSdk.failbackValidateRequest(challenge, validate, seccode) );
        }


//        if (gtResult.equals(GeetestLib.success_res)) {
//            PrintWriter out = response.getWriter();
//            out.println(GeetestLib.success_res + ":" + gtSdk.getVersionInfo());
//        } else{
//            PrintWriter out = response.getWriter();
//            out.println(GeetestLib.fail_res + ":" + gtSdk.getVersionInfo());
//        }

    }
}
