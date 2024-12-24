package com.jsp.bookstore.helper;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.hibernate.loader.entity.CacheEntityLoaderHelper.PersistenceContextEntry;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages = "com.jsp")
public class ConfigurationClass {
  @Bean
  public InternalResourceViewResolver resolver() {
	  InternalResourceViewResolver irv=new InternalResourceViewResolver();
	  irv.setSuffix(".jsp");
	  irv.setPrefix("/");
	  return irv;
  }
  @Bean
  public EntityManagerFactory getEMF() {
	  return Persistence.createEntityManagerFactory("harshini");
  }
  @Bean
  public CommonsMultipartResolver multipartResolver() {
	  CommonsMultipartResolver resolver = new CommonsMultipartResolver();
	    resolver.setMaxUploadSizePerFile(10 * 1024 * 1024); // 10MB (adjust as needed)
	    return resolver;
  }
}
