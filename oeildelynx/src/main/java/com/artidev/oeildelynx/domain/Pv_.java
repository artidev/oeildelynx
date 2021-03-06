/*
 * (c) Copyright 2005-2013 JAXIO, http://www.jaxio.com
 * Source code generated by Celerio, a Jaxio product
 * Want to purchase Celerio ? email us at info@jaxio.com
 * Follow us on twitter: @springfuse
 * Documentation: http://www.jaxio.com/documentation/celerio/
 * Template pack-backend-jpa:src/main/java/domain/EntityMeta_.e.vm.java
 */
package com.artidev.oeildelynx.domain;

import java.util.Date;

import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@StaticMetamodel(Pv.class)
public abstract class Pv_ {

    // Raw attributes
    public static volatile SingularAttribute<Pv, String> id;
    public static volatile SingularAttribute<Pv, String> analysePv;
    public static volatile SingularAttribute<Pv, Date> datePv;
    public static volatile SingularAttribute<Pv, String> archivePv;

    // Many to one
    public static volatile SingularAttribute<Pv, Unite> codeUnite;
    public static volatile SingularAttribute<Pv, Affaire> numeroAffaire;
}