package com.artidev.oeildelynx.repository;

import org.springframework.data.repository.CrudRepository;

import com.artidev.oeildelynx.domain.Personne;

public interface PersonneRepository extends CrudRepository<Personne, String> {

}
