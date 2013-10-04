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

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.persistence.UniqueConstraint;
import javax.xml.bind.annotation.XmlTransient;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.common.base.Objects;

@Entity
@Table(name = "residence_personne", uniqueConstraints = { @UniqueConstraint(name = "resider_pk", columnNames = { "numero_pers", "code_localite", "`date`" }),
        @UniqueConstraint(name = "pk_residence_personne", columnNames = { "numero_pers", "code_localite", "`date`" }) })
public class ResidencePersonne implements Identifiable<ResidencePersonnePk>, Serializable {
    private static final long serialVersionUID = 1L;
    private static final Logger log = LoggerFactory.getLogger(ResidencePersonne.class);

    // Composite primary key
    private ResidencePersonnePk id = new ResidencePersonnePk();

    // Many to one
    private Personne numeroPers;
    private Localite codeLocalite;
    private Date date;

    // -----------------------
    // Composite Primary Key
    // -----------------------

    /**
     * Returns the composite primary key.
     */
    @Override
    @EmbeddedId
    public ResidencePersonnePk getId() {
        return id;
    }

    /**
     * Set the composite primary key.
     * @param id the composite primary key.
     */
    @Override
    public void setId(ResidencePersonnePk id) {
        this.id = id;
    }

    public ResidencePersonne id(ResidencePersonnePk id) {
        setId(id);
        return this;
    }

    /**
     * Tells whether or not this instance has a non empty composite primary key set.
     * @return true if a non empty primary key is set, false otherwise
     */
    @Override
    @Transient
    @XmlTransient
    public boolean isIdSet() {
        return getId() != null && getId().areFieldsSet();
    }

    // -----------------------------------------------------------------
    // Many to One support
    // -----------------------------------------------------------------

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    // many-to-one: ResidencePersonne.numeroPers ==> Personne.id
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @JoinColumn(name = "numero_pers", nullable = false)
    @ManyToOne(cascade = { PERSIST, MERGE }, fetch = LAZY)
    @MapsId(value = "numeroPers")
    public Personne getNumeroPers() {
        return numeroPers;
    }

    /**
     * Set the {@link #numeroPers} without adding this ResidencePersonne instance on the passed {@link #numeroPers}
     */
    public void setNumeroPers(Personne numeroPers) {
        this.numeroPers = numeroPers;
    }

    public ResidencePersonne numeroPers(Personne numeroPers) {
        setNumeroPers(numeroPers);
        return this;
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    // many-to-one: ResidencePersonne.codeLocalite ==> Localite.id
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @JoinColumn(name = "code_localite", nullable = false)
    @ManyToOne(cascade = { PERSIST, MERGE }, fetch = LAZY)
    @MapsId(value = "codeLocalite")
    public Localite getCodeLocalite() {
        return codeLocalite;
    }

    /**
     * Set the {@link #codeLocalite} without adding this ResidencePersonne instance on the passed {@link #codeLocalite}
     */
    public void setCodeLocalite(Localite codeLocalite) {
        this.codeLocalite = codeLocalite;
    }

    public ResidencePersonne codeLocalite(Localite codeLocalite) {
        setCodeLocalite(codeLocalite);
        return this;
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    // many-to-one: ResidencePersonne.date ==> Date.id
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @JoinColumn(name = "`date`", nullable = false)
    @ManyToOne(cascade = { PERSIST, MERGE }, fetch = LAZY)
    @MapsId(value = "date")
    public Date getDate() {
        return date;
    }

    /**
     * Set the {@link #date} without adding this ResidencePersonne instance on the passed {@link #date}
     */
    public void setDate(Date date) {
        this.date = date;
    }

    public ResidencePersonne date(Date date) {
        setDate(date);
        return this;
    }

    /**
     * Apply the default values.
     */
    public ResidencePersonne withDefaults() {
        return this;
    }

    /**
     * Equals implementation using a business key.
     */
    @Override
    public boolean equals(Object other) {
        return this == other || (other instanceof ResidencePersonne && hashCode() == other.hashCode());
    }

    private IdentifiableHashBuilder identifiableHashBuilder = new IdentifiableHashBuilder();

    @Override
    public int hashCode() {
        return identifiableHashBuilder.hash(log, this);
    }

    /**
     * Construct a readable string representation for this ResidencePersonne instance.
     * @see java.lang.Object#toString()
     */
    @Override
    public String toString() {
        return Objects.toStringHelper(this) //
                .toString();
    }
}