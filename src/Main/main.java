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
		
		Offre pub = new Offre();
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
		cruDdao2.add(ville_Pub2);

		
		
		
		
		
		
		
	
	}

}
