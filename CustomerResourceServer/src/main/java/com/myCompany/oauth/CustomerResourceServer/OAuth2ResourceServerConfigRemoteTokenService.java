package com.myCompany.oauth.CustomerResourceServer;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.provider.token.RemoteTokenServices;

@Configuration
@ComponentScan({ "com.myCompany.oauth.CustomerResourceServer.controller" })
public class OAuth2ResourceServerConfigRemoteTokenService extends ResourceServerConfigurerAdapter {

	@Override
	public void configure(final HttpSecurity http) throws Exception {
		// @formatter:off
//		http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.IF_REQUIRED).and()
//				.authorizeRequests().anyRequest().permitAll();
		// @formatter:on
		//No session, that why no csrf protection
        http.csrf().disable();
        http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);
        http.authorizeRequests()
                .antMatchers(HttpMethod.OPTIONS, "/**").permitAll()
//                .antMatchers("/webjars/**",
//                        "/swagger-ui.html",
//                        "/swagger",
//                        "/swagger-resources/**",
//                        "/v2/api-docs").permitAll()
                .anyRequest().authenticated();
	}
	
//	other example
//	//The scopes specified here should begin with your resourceId from above.
//    http.authorizeRequests()
//            .antMatchers(HttpMethod.GET, "/api/v1/person").access("#oauth2.hasScope('users.read')")
//            .antMatchers(HttpMethod.POST, "/api/v1/person").access("#oauth2.hasScope('users.write')");

	@Primary
	@Bean
	public RemoteTokenServices tokenServices() {
		final RemoteTokenServices tokenService = new RemoteTokenServices();
		tokenService.setCheckTokenEndpointUrl("http://localhost:8282/oauth/check_token");
		tokenService.setClientId("customer-service");
		tokenService.setClientSecret("webpass");
		return tokenService;
	}
}
