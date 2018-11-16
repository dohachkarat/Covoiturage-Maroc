package dao;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.OneToMany;

@Entity
@Inheritance(strategy =InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name="TypePub",
discriminatorType=DiscriminatorType.STRING,
length=25)
public class Pub {

	@Id
	@GeneratedValue
	private int id;
	private Date date_depart;
	private Date date_arrivee;
	private int places;
	
	@OneToMany(mappedBy = "pub")
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
	public Date getDate_depart() {
		return date_depart;
	}
	public void setDate_depart(Date date_depart) {
		this.date_depart = date_depart;
	}
	public Date getDate_arrivee() {
		return date_arrivee;
	}
	public void setDate_arrivee(Date date_arrivee) {
		this.date_arrivee = date_arrivee;
	}
	public int getPlaces() {
		return places;
	}
	public void setPlaces(int places) {
		this.places = places;
	}
	public Pub() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Pub(Date date_depart, Date date_arrivee, int places) {
		super();
		this.date_depart = date_depart;
		this.date_arrivee = date_arrivee;
		this.places = places;
	}
	
}
