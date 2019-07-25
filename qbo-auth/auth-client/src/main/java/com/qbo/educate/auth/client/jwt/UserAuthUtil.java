package com.qbo.educate.auth.client.jwt;

import com.qbo.educate.auth.client.config.UserAuthConfig;
import com.qbo.educate.auth.common.util.jwt.IJWTInfo;
import com.qbo.educate.auth.common.util.jwt.JWTHelper;
import com.qbo.educate.common.exception.auth.UserTokenException;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.SignatureException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/**
 * Created by ace on 2017/9/15.
 */
@Configuration
@ComponentScan("com.qbo.educate.auth.client.config")
public class UserAuthUtil {

    @Autowired
    private UserAuthConfig userAuthConfig;

    public IJWTInfo getInfoFromToken(String token) throws Exception {
        try {
            return JWTHelper.getInfoFromToken(token, userAuthConfig.getPubKeyByte());
        }catch (ExpiredJwtException ex){
            throw new UserTokenException("User token expired!");
        }catch (SignatureException ex){
            throw new UserTokenException("User token signature error!");
        }catch (IllegalArgumentException ex){
            throw new UserTokenException("User token is null or empty!");
        }
    }
}
