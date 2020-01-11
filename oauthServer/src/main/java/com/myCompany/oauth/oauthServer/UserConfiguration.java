package com.myCompany.oauth.oauthServer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.authentication.configuration.GlobalAuthenticationConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

//@Configuration
public class UserConfiguration {//extends GlobalAuthenticationConfigurerAdapter {

	@Autowired
	PasswordEncoder passwordEncoder;// = PasswordEncoderFactories.createDelegatingPasswordEncoder();
//	
//	@Bean
//	public PasswordEncoder passwordEncoder() {
//		return PasswordEncoderFactories.createDelegatingPasswordEncoder();
//	}
	
//	@Bean
//    public static NoOpPasswordEncoder passwordEncoder() {
//        return (NoOpPasswordEncoder) NoOpPasswordEncoder.getInstance();
//    }
//	
//	@Bean  // {bcrypt}
//	public PasswordEncoder passwordEncoder() {
//		return new BCryptPasswordEncoder();
//	}
	
//	@Override
//	public void init(AuthenticationManagerBuilder auth) throws Exception {
//		auth.inMemoryAuthentication().withUser("mohamed").password(passwordEncoder.encode("1234")).roles("USER", "ADMIN")
//				.authorities("CAN_READ", "CAN_WRITE")
//				.and().withUser("ahmed").password(passwordEncoder.encode("1234"))
//				.roles("USER").authorities("CAN_READ");
//	}

}
