package com.qbo.educate.generator;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @author zzg
 * @email zhangzhenguan@qtone.cn
 * @date 2019/08/25
 */
@SpringBootApplication
@MapperScan("com.qbo.educate.generator.mapper")
public class GeneratorBootstrap {
    public static void main(String[] args) {
        SpringApplication.run(GeneratorBootstrap.class, args);
    }
}
