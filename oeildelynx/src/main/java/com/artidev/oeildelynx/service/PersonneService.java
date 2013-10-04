package com.artidev.oeildelynx.service;

import java.util.List;

import com.artidev.oeildelynx.domain.Personne;
import com.artidev.oeildelynx.domain.ProfilBiometrique;
import com.artidev.oeildelynx.domain.ProfilPhoto;

public interface PersonneService {
	
	public List<Personne> findAllPersonne();
	public Personne save(Personne personne);//insert or update
	public void deletePersonne(Personne personne);// a confirmer
	public Personne findPersonneById(Long id);
	public Personne findPersonneByEmpreinteDigitale(ProfilBiometrique profilBiometrique);
	public Personne findPersonneByPhoto(ProfilPhoto profilPhoto);
	public List<Personne>findPersonneByName(String name);

}
