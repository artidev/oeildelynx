/*
 * (c) Copyright 2005-2013 JAXIO, http://www.jaxio.com
 * Source code generated by Celerio, a Jaxio product
 * Want to purchase Celerio ? email us at info@jaxio.com
 * Follow us on twitter: @springfuse
 * Documentation: http://www.jaxio.com/documentation/celerio/
 * Template pack-backend-jpa:src/main/java/domain/Entity.e.vm.java
 */
package com.artidev.oeildelynx.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlTransient;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.common.base.Objects;

@Entity
@Table(name = "type_arme")
public class TypeArme implements Identifiable<Integer>, Serializable {
    private static final long serialVersionUID = 1L;
    private static final Logger log = LoggerFactory.getLogger(TypeArme.class);

    // Raw attributes
    private Integer id;
    private String nomTypeArme;

    // -- [id] ------------------------

    @Override
    @Column(name = "code_type_arme", precision = 5)
    @GeneratedValue
    @Id
    public Integer getId() {
        return id;
    }

    @Override
    public void setId(Integer id) {
        this.id = id;
    }

    public TypeArme id(Integer id) {
        setId(id);
        return this;
    }

    @Override
    @Transient
    @XmlTransient
    public boolean isIdSet() {
        return id != null;
    }

    // -- [nomTypeArme] ------------------------

    @Size(max = 1)
    @Column(name = "nom_type_arme", length = 1)
    public String getNomTypeArme() {
        return nomTypeArme;
    }

    public void setNomTypeArme(String nomTypeArme) {
        this.nomTypeArme = nomTypeArme;
    }

    public TypeArme nomTypeArme(String nomTypeArme) {
        setNomTypeArme(nomTypeArme);
        return this;
    }

    /**
     * Apply the default values.
     */
    public TypeArme withDefaults() {
        return this;
    }

    /**
     * Equals implementation using a business key.
     */
    @Override
    public boolean equals(Object other) {
        return this == other || (other instanceof TypeArme && hashCode() == other.hashCode());
    }

    private IdentifiableHashBuilder identifiableHashBuilder = new IdentifiableHashBuilder();

    @Override
    public int hashCode() {
        return identifiableHashBuilder.hash(log, this);
    }

    /**
     * Construct a readable string representation for this TypeArme instance.
     * @see java.lang.Object#toString()
     */
    @Override
    public String toString() {
        return Objects.toStringHelper(this) //
                .add(TypeArme_.id.getName(), getId()) //
                .add(TypeArme_.nomTypeArme.getName(), getNomTypeArme()) //
                .toString();
    }
}