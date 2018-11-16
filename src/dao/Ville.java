package dao;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="VILLES")
public class Ville {

	@Id
	@GeneratedValue
	private int id;
	private String nom;
	@OneToMany(mappedBy = "ville")
	private Set<Ville_Pub> ville_Pubs = new HashSet<>();
	
	
	public Set<Ville_Pub> getVille_Pubs() {
		return ville_Pubs;
	}
	public void setVille_Pubs(Set<Ville_Pub> ville_Pubs) {
		this.ville_Pubs = ville_Pubs;
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
	
	
}
