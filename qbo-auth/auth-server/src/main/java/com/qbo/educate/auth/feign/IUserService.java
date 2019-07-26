package com.qbo.educate.auth.feign;

import com.qbo.educate.api.vo.user.UserInfo;
import com.qbo.educate.auth.util.user.JwtAuthenticationRequest;
import com.qbo.educate.auth.configuration.FeignConfiguration;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * ${DESCRIPTION}
 *
 * @author zzg
 * @create 2019-07-26 09:11
 */
@FeignClient(value = "qbo-admin",configuration = FeignConfiguration.class)
public interface IUserService {
  @RequestMapping(value = "/api/user/validate", method = RequestMethod.POST)
  public UserInfo validate(@RequestBody JwtAuthenticationRequest authenticationRequest);
}
