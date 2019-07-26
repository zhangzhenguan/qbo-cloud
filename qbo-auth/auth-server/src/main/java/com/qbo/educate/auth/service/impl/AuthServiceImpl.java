package com.qbo.educate.auth.service.impl;

import com.alibaba.fastjson.JSON;
import com.qbo.educate.api.vo.user.UserInfo;
import com.qbo.educate.auth.common.util.jwt.JWTInfo;
import com.qbo.educate.auth.feign.IUserService;
import com.qbo.educate.auth.service.AuthService;
import com.qbo.educate.auth.util.user.JwtAuthenticationRequest;
import com.qbo.educate.auth.util.user.JwtTokenUtil;
import com.qbo.educate.common.exception.auth.UserInvalidException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

@Slf4j
@Service
public class AuthServiceImpl implements AuthService {

    private JwtTokenUtil jwtTokenUtil;
    private IUserService userService;

    @Autowired
    public AuthServiceImpl(
            JwtTokenUtil jwtTokenUtil,
            IUserService userService) {
        this.jwtTokenUtil = jwtTokenUtil;
        this.userService = userService;
    }

    @Override
    public String login(JwtAuthenticationRequest authenticationRequest) throws Exception {
        log.debug(".....{}.....", JSON.toJSON(authenticationRequest));
        UserInfo info = userService.validate(authenticationRequest);
        if (!StringUtils.isEmpty(info.getId())) {
            String token = jwtTokenUtil.generateToken(new JWTInfo(info.getUsername(), info.getId() + "", info.getName()));
            return token;
        }
        throw new UserInvalidException("用户不存在或账户密码错误!");
    }

    @Override
    public void validate(String token) throws Exception {
        jwtTokenUtil.getInfoFromToken(token);
    }

    @Override
    public String refresh(String oldToken) throws Exception {
        return jwtTokenUtil.generateToken(jwtTokenUtil.getInfoFromToken(oldToken));
    }
}
