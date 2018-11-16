package controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.Offre;
import dao.User;
import dao.Ville;
import dao.Ville_Pub;
import services.CRUDService;

@Controller
public class OffreController {
	
	@Autowired
	CRUDService<User> user;
	@Autowired
	CRUDService<Ville> ville;
	@Autowired
	CRUDService<Offre> offre;
	@Autowired
	CRUDService<Ville_Pub> VillePub;

	@RequestMapping(value ="/Offres")
	public String IndexOffre()
	{
		return "offres";
	}
	
	@RequestMapping(value ="/pubOffre")
	public String insertOffre(Model model,
			@RequestParam String ville_Depart,
			@RequestParam String ville_Arrivee,
			@RequestParam String date_depart,
			@RequestParam String date_arrivee,
			@RequestParam String station,
			@RequestParam String prix,
			@RequestParam String places) throws ParseException
	{
		// convertion de la date 
		SimpleDateFormat spf = new SimpleDateFormat("yyyy-mm-dd");
// création de l'offre
		Offre pub = new Offre();
		pub.setDate_arrivee(spf.parse(date_depart));
		pub.setDate_depart(spf.parse(date_arrivee));
		pub.setPlaces(Integer.parseInt(places));
		pub.setPrix(Double.parseDouble(prix));
		
		Ville ville = new Ville();
		ville.setNom(ville_Depart);
		
		Ville ville2 = new Ville();
		ville2.setNom(ville_Arrivee);
		
		Ville ville3 = new Ville();
		ville2.setNom(station);
		
		//classe association entre ville et pub
		Ville_Pub  ville_Pub = new Ville_Pub();
		ville_Pub.setPub(pub);
		ville_Pub.setVille(ville);
		ville_Pub.setType_station("Départ");
		
		Ville_Pub  ville_Pub2 = new Ville_Pub();
		ville_Pub2.setPub(pub);
		ville_Pub2.setVille(ville2);
		ville_Pub2.setType_station("Arrivée");
		
		Ville_Pub  ville_Pub3 = new Ville_Pub();
		ville_Pub3.setPub(pub);
		ville_Pub3.setVille(ville3);
		ville_Pub3.setType_station("station");
		
		// insertion
		VillePub.add(ville_Pub);
		VillePub.add(ville_Pub2);
		VillePub.add(ville_Pub3);
		
		model.addAttribute("messageSucces", "offre bien publiée");

		return "offres";
	}
}
