package Main;


import java.text.ParseException;
import java.text.SimpleDateFormat;
//import java.lang.reflect.Field;
import java.util.Date;

//import com.sun.org.apache.bcel.internal.classfile.Attribute;

import dao.*;


public class main {
 static Date d=new Date();
	public static void main(String[] args) throws ParseException {
		// TODO Auto-generated method stub
		SimpleDateFormat sdf = new SimpleDateFormat("dd/mm/yyyy");
		System.out.println("hh");

		User user = new User( "doha", "hind", "feminin", sdf.parse("01/06/1995"), 
				"0603942179",
				"doha@hind.com", 
				"12345", "admin");
		
		CRUDdao< User> cruDdao = new CRUDdao<>();
		
		cruDdao.add(user);
		System.out.println("hh");
		
		/*Offre pub = new Offre();
		pub.setDate_arrivee(sdf.parse("01/06/1995"));
		pub.setDate_depart(sdf.parse("01/06/1995"));
		pub.setPlaces(3);
		pub.setPrix(10.2);
		
		Ville ville = new Ville();
		ville.setNom("Rabat");
		
		Ville ville2 = new Ville();
		ville2.setNom("Casa");
		
		Ville_Pub  ville_Pub = new Ville_Pub();
		ville_Pub.setPub(pub);
		ville_Pub.setVille(ville);
		ville_Pub.setType_station("Départ");
		
		Ville_Pub  ville_Pub2 = new Ville_Pub();
		ville_Pub2.setPub(pub);
		ville_Pub2.setVille(ville2);
		ville_Pub2.setType_station("Arrivée");
		
		CRUDdao<Ville_Pub> cruDdao2 = new CRUDdao<>();
		cruDdao2.add(ville_Pub);
		cruDdao2.add(ville_Pub2);*/
	/*	
		Demande pub = new Demande();
		
		pub.setDate_arrivee(sdf.parse("05/12/1996"));
		pub.setDate_depart(sdf.parse("05/12/1996"));
		pub.setPlaces(4);
		
		Ville villeD = new Ville();
		villeD.setNom("Bla");
		
		Ville ville2D = new Ville();
		ville2D.setNom("Bloooo");
		
		Ville_Pub  ville_PubD = new Ville_Pub();
		ville_PubD.setPub(pub);
		ville_PubD.setVille(villeD);
		ville_PubD.setType_station("Départ");
		
		Ville_Pub  ville_Pub2D = new Ville_Pub();
		ville_Pub2D.setPub(pub);
		ville_Pub2D.setVille(ville2D);
		ville_Pub2D.setType_station("Arrivée");
		
		CRUDdao<Ville_Pub> cruDdao2D = new CRUDdao<>();
		cruDdao2D.add(ville_PubD);
		cruDdao2D.add(ville_Pub2D);
		*/
		
		
		
		
		
	
	}

}
