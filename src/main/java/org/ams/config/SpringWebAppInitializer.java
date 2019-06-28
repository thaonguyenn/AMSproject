package org.ams.config;

import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.security.web.SecurityFilterChain;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.filter.DelegatingFilterProxy;
import org.springframework.web.servlet.DispatcherServlet;

public class SpringWebAppInitializer implements WebApplicationInitializer {
 
    @Override
    public void onStartup(ServletContext container) throws ServletException {
    	registerCharacterEncodingFilter(container);
    	//registerspringSecurityFilterChain(container);
    	AnnotationConfigWebApplicationContext ctx = new AnnotationConfigWebApplicationContext();
		ctx.register(ApplicationContextConfig.class);
		ctx.setServletContext(container);
		ServletRegistration.Dynamic servlet = container.addServlet("dispatcher", new DispatcherServlet(ctx));
		servlet.setLoadOnStartup(1);
		servlet.addMapping("/");
}
    private void registerCharacterEncodingFilter(final ServletContext servletContext) { 
        CharacterEncodingFilter characterEncodingFilter = new CharacterEncodingFilter(); 
        characterEncodingFilter.setEncoding("UTF-8"); 
        characterEncodingFilter.setForceEncoding(true); 
        FilterRegistration.Dynamic filter = servletContext.addFilter("characterEncodingFilter", characterEncodingFilter); 
        filter.addMappingForUrlPatterns(null, false, "/*"); 
    } 
//    private void registerspringSecurityFilterChain(final ServletContext servletContext) { 
//    	DelegatingFilterProxy springSecurityFilterChain = new DelegatingFilterProxy();
//    	springSecurityFilterChain.
//    } 
}