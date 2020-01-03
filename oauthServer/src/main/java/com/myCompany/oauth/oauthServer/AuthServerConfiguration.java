package com.myCompany.oauth.oauthServer;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
public class AuthServerConfiguration extends WebSecurityConfigurerAdapter {//implements AuthorizationServerConfigurer {
//
//	PasswordEncoder passwordEncoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
//
	@Bean
	//@Override
	public AuthenticationManager authenticationManagerBean() throws Exception {
		return super.authenticationManagerBean();
	}
//
//	@Autowired
//	AuthenticationManager authenticationManager;
//
//	@Override
//	public void configure(AuthorizationServerSecurityConfigurer security) throws Exception {
//		security.checkTokenAccess("permitAll()");
//	}
//
//	@Override
//	public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
//		clients.inMemory().withClient("web").secret(passwordEncoder.encode("webpass")).scopes("READ", "WRITE")
//				.authorizedGrantTypes("password", "authorization_code", "refresh_token", "client-credential")
//				.accessTokenValiditySeconds(3600);
//	}
//
//	@Override
//	public void configure(AuthorizationServerEndpointsConfigurer endpoints) throws Exception {
//		endpoints.authenticationManager(authenticationManager);
//	}

}
