package com.qbo.educate.gateway;

import com.qbo.educate.auth.client.EnableAceAuthClient;
import com.qbo.educate.gateway.utils.DBLog;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;

/**
 * @author zzg
 * @create 2019/07/12.
 */
@SpringBootApplication
@EnableDiscoveryClient
@EnableAceAuthClient
@EnableFeignClients({"com.qbo.educate.auth.client.feign","com.qbo.educate.gateway.feign"})
public class GatewayServerBootstrap {
    public static void main(String[] args) {
        DBLog.getInstance().start();
        SpringApplication.run(GatewayServerBootstrap.class, args);
    }
}
