package dao;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class User {
	@Id
	@GeneratedValue(strategy =GenerationType.AUTO)
	private int id;
	private String nom;
	private String prenom;
	private String genre;
	private Date date_naissance;
	private String tel;
	private String mail;
	private String password;
	private String role;

	
	public User(String nom, String prenom, String genre, Date date_naissance, String tel, String mail,
			String password, String role) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.genre = genre;
		this.date_naissance = date_naissance;
		this.tel = tel;
		this.mail = mail;
		this.password = password;
		this.role = role;
	}
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public Date getDate_naissance() {
		return date_naissance;
	}
	public void setDate_naissance(Date date_naissance) {
		this.date_naissance = date_naissance;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", nom=" + nom + ", prenom=" + prenom + ", genre=" + genre + ", date_naissance="
				+ date_naissance.getDate() + ", tel=" + tel + ", mail=" + mail + ", password=" + password + ", role=" + role
				+ "]";
	}
	
	
	

}
