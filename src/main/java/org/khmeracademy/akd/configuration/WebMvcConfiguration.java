package org.khmeracademy.akd.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
@Configuration
@PropertySource(
		value={"classpath:configuration.properties"}
)
public class WebMvcConfiguration extends WebMvcConfigurerAdapter{
	
	@Autowired
	private Environment environment;
	
	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		
		//USE WHEN HAVE STATIC USER AND ROLE
		
		/*registry.addViewController("/").setViewName("index");
		registry.addViewController("/admin/dashboard").setViewName("admin/dashboard");
		registry.addViewController("/dba/index").setViewName("dba/index");*/
		
		
		// STILL CAN USE WHEN DYNAMIC
		registry.addViewController("/accessDenied").setViewName("error/403");	//	WHEN MEET /accessDenied IT WILL GO TO OPEN PAGE IN FOLDER error/403
		registry.addViewController("/login").setViewName("login");
		registry.addViewController("/logout?logout").setViewName("login");
	
	
	}
	
	//REST TEMPLATE
	/*@Bean
	public HttpHeaders header(){
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		headers.set("Authorization", "Basic Q2hpdm9ybjphZG1pbg==");
		return headers;
	}*/
	
	@Bean
	public RestTemplate restTemplate(){
		RestTemplate restTemplate = new RestTemplate();
		// Add the Jackson and String message converters
		restTemplate.getMessageConverters().add(new MappingJackson2HttpMessageConverter());
		restTemplate.getMessageConverters().add(new StringHttpMessageConverter());
		return restTemplate;
	}
	
	@Bean(name="KNONGDAI_API_URL")
	public String knongDaiApiUrl(){
		return environment.getProperty("ACCOUNT.API.URL");
	}
	
	@Bean(name="KNONGDAI_API_SECRET_HEADER")
	public HttpHeaders knongDaiSecretHeader(){
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		String credentials = environment.getProperty("ACCOUNT.API.SECRET.HEADER");
		headers.set("Authorization", "Basic " + credentials);
		return headers;
	}
	
	
}
