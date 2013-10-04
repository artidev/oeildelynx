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

@StaticMetamodel(Contact.class)
public abstract class Contact_ {

    // Raw attributes
    public static volatile SingularAttribute<Contact, Integer> id;
    public static volatile SingularAttribute<Contact, String> contact2;

    // Many to one
    public static volatile SingularAttribute<Contact, Personne> numeroPers;
    public static volatile SingularAttribute<Contact, TypeContact> codeTypeContact;
}