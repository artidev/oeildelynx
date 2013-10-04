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
@Table(name = "race")
public class Race implements Identifiable<Integer>, Serializable {
    private static final long serialVersionUID = 1L;
    private static final Logger log = LoggerFactory.getLogger(Race.class);

    // Raw attributes
    private Integer id;
    private String libelleRace;

    // -- [id] ------------------------

    @Override
    @Column(name = "code_race", precision = 5)
    @GeneratedValue
    @Id
    public Integer getId() {
        return id;
    }

    @Override
    public void setId(Integer id) {
        this.id = id;
    }

    public Race id(Integer id) {
        setId(id);
        return this;
    }

    @Override
    @Transient
    @XmlTransient
    public boolean isIdSet() {
        return id != null;
    }

    // -- [libelleRace] ------------------------

    @Size(max = 10)
    @Column(name = "libelle_race", length = 10)
    public String getLibelleRace() {
        return libelleRace;
    }

    public void setLibelleRace(String libelleRace) {
        this.libelleRace = libelleRace;
    }

    public Race libelleRace(String libelleRace) {
        setLibelleRace(libelleRace);
        return this;
    }

    /**
     * Apply the default values.
     */
    public Race withDefaults() {
        return this;
    }

    /**
     * Equals implementation using a business key.
     */
    @Override
    public boolean equals(Object other) {
        return this == other || (other instanceof Race && hashCode() == other.hashCode());
    }

    private IdentifiableHashBuilder identifiableHashBuilder = new IdentifiableHashBuilder();

    @Override
    public int hashCode() {
        return identifiableHashBuilder.hash(log, this);
    }

    /**
     * Construct a readable string representation for this Race instance.
     * @see java.lang.Object#toString()
     */
    @Override
    public String toString() {
        return Objects.toStringHelper(this) //
                .add(Race_.id.getName(), getId()) //
                .add(Race_.libelleRace.getName(), getLibelleRace()) //
                .toString();
    }
}