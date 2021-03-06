/*
 * (c) Copyright 2005-2013 JAXIO, http://www.jaxio.com
 * Source code generated by Celerio, a Jaxio product
 * Want to purchase Celerio ? email us at info@jaxio.com
 * Follow us on twitter: @springfuse
 * Documentation: http://www.jaxio.com/documentation/celerio/
 * Template pack-backend-jpa:src/main/java/domain/Entity.e.vm.java
 */
package com.artidev.oeildelynx.domain;

import static javax.persistence.CascadeType.MERGE;
import static javax.persistence.CascadeType.PERSIST;
import static javax.persistence.FetchType.LAZY;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlTransient;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.common.base.Objects;

@Entity
@Table(name = "modele")
public class Modele implements Identifiable<Integer>, Serializable {
    private static final long serialVersionUID = 1L;
    private static final Logger log = LoggerFactory.getLogger(Modele.class);

    // Raw attributes
    private Integer id;
    private String nomModele;

    // Many to one
    private Marque codeMarque;

    // -- [id] ------------------------

    @Override
    @Column(name = "code_modele", precision = 5)
    @GeneratedValue
    @Id
    public Integer getId() {
        return id;
    }

    @Override
    public void setId(Integer id) {
        this.id = id;
    }

    public Modele id(Integer id) {
        setId(id);
        return this;
    }

    @Override
    @Transient
    @XmlTransient
    public boolean isIdSet() {
        return id != null;
    }

    // -- [nomModele] ------------------------

    @Size(max = 10)
    @Column(name = "nom_modele", length = 10)
    public String getNomModele() {
        return nomModele;
    }

    public void setNomModele(String nomModele) {
        this.nomModele = nomModele;
    }

    public Modele nomModele(String nomModele) {
        setNomModele(nomModele);
        return this;
    }

    // -----------------------------------------------------------------
    // Many to One support
    // -----------------------------------------------------------------

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    // many-to-one: Modele.codeMarque ==> Marque.id
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @NotNull
    @JoinColumn(name = "code_marque", nullable = false)
    @ManyToOne(cascade = { PERSIST, MERGE }, fetch = LAZY)
    public Marque getCodeMarque() {
        return codeMarque;
    }

    /**
     * Set the {@link #codeMarque} without adding this Modele instance on the passed {@link #codeMarque}
     */
    public void setCodeMarque(Marque codeMarque) {
        this.codeMarque = codeMarque;
    }

    public Modele codeMarque(Marque codeMarque) {
        setCodeMarque(codeMarque);
        return this;
    }

    /**
     * Apply the default values.
     */
    public Modele withDefaults() {
        return this;
    }

    /**
     * Equals implementation using a business key.
     */
    @Override
    public boolean equals(Object other) {
        return this == other || (other instanceof Modele && hashCode() == other.hashCode());
    }

    private IdentifiableHashBuilder identifiableHashBuilder = new IdentifiableHashBuilder();

    @Override
    public int hashCode() {
        return identifiableHashBuilder.hash(log, this);
    }

    /**
     * Construct a readable string representation for this Modele instance.
     * @see java.lang.Object#toString()
     */
    @Override
    public String toString() {
        return Objects.toStringHelper(this) //
                .add(Modele_.id.getName(), getId()) //
                .add(Modele_.nomModele.getName(), getNomModele()) //
                .toString();
    }
}