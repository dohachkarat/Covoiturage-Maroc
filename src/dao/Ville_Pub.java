package dao;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Ville_Pub {

	@Id
	@GeneratedValue
	@Column(name="Ville_Pub_ID")
	private int id;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="Pub_ID")
	private Pub pub;
	
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="Ville_ID")
	private Ville ville;
	
	private String type_station;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Pub getPub() {
		return pub;
	}
	public void setPub(Pub pub) {
		this.pub = pub;
	}
	public Ville getVille() {
		return ville;
	}
	public void setVille(Ville ville) {
		this.ville = ville;
	}
	public String getType_station() {
		return type_station;
	}
	public void setType_station(String type_station) {
		this.type_station = type_station;
	}
	
	
}
