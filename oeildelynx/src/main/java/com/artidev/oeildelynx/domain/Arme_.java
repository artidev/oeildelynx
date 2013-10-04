/*
 * (c) Copyright 2005-2013 JAXIO, http://www.jaxio.com
 * Source code generated by Celerio, a Jaxio product
 * Want to purchase Celerio ? email us at info@jaxio.com
 * Follow us on twitter: @springfuse
 * Documentation: http://www.jaxio.com/documentation/celerio/
 * Template pack-backend-jpa:src/main/java/domain/EntityMeta_.e.vm.java
 */
package com.artidev.oeildelynx.domain;

import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@StaticMetamodel(Arme.class)
public abstract class Arme_ {

    // Raw attributes
    public static volatile SingularAttribute<Arme, Integer> id;
    public static volatile SingularAttribute<Arme, String> designationBien;
    public static volatile SingularAttribute<Arme, Double> calibre;

    // Many to one
    public static volatile SingularAttribute<Arme, TypeArme> codeTypeArme;

    // One to one
    public static volatile SingularAttribute<Arme, Biens> biens;
}