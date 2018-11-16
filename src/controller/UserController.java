package controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.User;
import services.CRUDService;

@Controller
public class UserController {
	
	@Autowired
	CRUDService<User> user;
	
	
	
	@RequestMapping(value="/index")
	public String pageIndex(Model model){
	
		return "index";
		
	}
	
	
	@RequestMapping(value ="/login", method=RequestMethod.POST)
	public String Login(Model model,
			@RequestParam String email,
			@RequestParam String password)
	{
		User u = user.getObjectByEmailPassword(email, password);
		
		if (u == null) {
			model.addAttribute("errorM", "Email ou mot de passe incorrect");
		} else {
			model.addAttribute("succesM", "Welcome");
			return "accueil";
		}
		
		return "index";
	}
	
	
	@RequestMapping(value ="/inscription", method=RequestMethod.POST)
	public String Isnsc(Model model,
			@RequestParam String nom,
			@RequestParam String prenom,
			@RequestParam String mail,
			@RequestParam String password,
			@RequestParam String genre,
			@RequestParam String tel,
			@RequestParam String role,
			@RequestParam String date_naissance) throws ParseException
	{
		SimpleDateFormat spf = new SimpleDateFormat("yyyy-mm-dd");
		User u = new User(nom, prenom, genre, spf.parse(date_naissance), tel, mail, password, role);
		System.out.println(u.toString());
	
		user.add(u);
		model.addAttribute("mssgInscr", "user bien enregistré");
		return "index";
	}
	
	
}
