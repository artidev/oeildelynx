package com.artidev.oeildelynx.service.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.artidev.oeildelynx.domain.Personne;
import com.artidev.oeildelynx.domain.ProfilBiometrique;
import com.artidev.oeildelynx.domain.ProfilPhoto;
import com.artidev.oeildelynx.repository.PersonneRepository;
import com.artidev.oeildelynx.service.PersonneService;
import com.google.common.collect.Lists;

@Service("jpaPersonneService")
@Repository
@Transactional
public class PersonneImpl implements PersonneService {
	
	//@Autowired
	//private PersonneRepository personneRepository;
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	@Transactional(readOnly=true)
	public List<Personne> findAllPersonne() {
		//return Lists.newArrayList(personneRepository.findAll());
		List<Personne> listePersonnes = em.createQuery("jpqlString", Personne.class).getResultList();
		return listePersonnes;
	}

	@Override
	public Personne save(Personne personne) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deletePersonne(Personne personne) {
		// TODO Auto-generated method stub

	}

	@Override
	@Transactional(readOnly=true)
	public Personne findPersonneById(Long id) {
		TypedQuery<Personne> query = em.createQuery("select distinct p from Personne p where p.id = :id  ", Personne.class);
		query.setParameter("id", id);
		return query.getSingleResult();
							 
	}

	@Override
	public Personne findPersonneByEmpreinteDigitale(
			ProfilBiometrique profilBiometrique) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Personne findPersonneByPhoto(ProfilPhoto profilPhoto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Personne> findPersonneByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

}
