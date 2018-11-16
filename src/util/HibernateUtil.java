package util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	public static final SessionFactory sessionFactory;

    
	static {
	        
	try {
	            
sessionFactory = new AnnotationConfiguration().configure("Hibernate.cfg.xml").buildSessionFactory();

	       
	       
	 }
	 catch (Throwable ex) {
	            
	
	  System.err.println("Initial SessionFactory creation failed." + ex);
	         
	   throw new ExceptionInInitializerError(ex);
	       
	 }
	 
	   }
	  public static SessionFactory getSessionFactory() {
	     
	   return sessionFactory;
	 
	   }

	}



