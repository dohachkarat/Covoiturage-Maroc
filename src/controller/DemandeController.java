package controller;

import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

import dao.Demande;
import dao.Ville;
import dao.Ville_Pub;
import services.CRUDService;

@Controller
public class DemandeController {
	
	@Autowired
	CRUDService<Ville_Pub> VillePub;

	@RequestMapping(value ="/demande")
	public String insertDemande(Model model){
		
		System.out.println("************** this shit is workiiing :::");
		
		return "demande";
	}
	
	

	@RequestMapping(value ="/pubDemande")
	public String insertDemande(Model model,
			@RequestParam String ville_Depart,
			@RequestParam String ville_Arrivee,
			@RequestParam String date_depart,
			@RequestParam String date_arrivee,
			@RequestParam String places) throws java.text.ParseException
	{
		try{
    	// convertion de la date 
    	SimpleDateFormat spf = new SimpleDateFormat("yyyy-mm-dd");
    	
    	Demande pubDemande = new Demande();
    	pubDemande.setDate_arrivee(spf.parse(date_depart));
    	pubDemande.setDate_depart(spf.parse(date_arrivee));
    	pubDemande.setPlaces(Integer.parseInt(places));
    	
    	Ville villeD = new Ville();
    	villeD.setNom(ville_Depart);
    	
    	Ville ville2D = new Ville();
    	ville2D.setNom(ville_Arrivee);
    	
    	//classe association entre ville et pub
    	
    	Ville_Pub vp = new Ville_Pub();
    	vp.setPub(pubDemande);
    	vp.setVille(villeD);
    	vp.setType_station("Depart");
    	
    	Ville_Pub vp2 = new Ville_Pub();
    	vp2.setPub(pubDemande);
    	vp2.setVille(ville2D);
    	vp2.setType_station("arrivee");
    	
    	//insertion
    	VillePub.add(vp);
    	VillePub.add(vp2);
    	
    	model.addAttribute("messageSucces", "demande bien publiee");
   			    	
	return "demande";
		}catch(Exception e){
			System.out.println("This is an exception : "+e);
			return "demande";
		}
	}
}
