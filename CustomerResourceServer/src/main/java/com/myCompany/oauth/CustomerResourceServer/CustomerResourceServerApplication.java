package com.myCompany.oauth.CustomerResourceServer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;

@SpringBootApplication
@EnableResourceServer
public class CustomerResourceServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(CustomerResourceServerApplication.class, args);
	}

}
