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
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlTransient;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.common.base.Objects;

@Entity
@Table(name = "arme")
public class Arme implements Identifiable<Integer>, Serializable {
    private static final long serialVersionUID = 1L;
    private static final Logger log = LoggerFactory.getLogger(Arme.class);

    // Raw attributes
    private Integer id;
    private String designationBien;
    private Double calibre;

    // Many to one
    private TypeArme codeTypeArme;

    // One to one
    private Biens biens;

    // -- [id] ------------------------

    @Override
    @Column(name = "numero_bien", precision = 10)
    @GeneratedValue
    @Id
    public Integer getId() {
        return id;
    }

    @Override
    public void setId(Integer id) {
        this.id = id;
    }

    public Arme id(Integer id) {
        setId(id);
        return this;
    }

    @Override
    @Transient
    @XmlTransient
    public boolean isIdSet() {
        return id != null;
    }

    // -- [designationBien] ------------------------

    @Size(max = 30)
    @Column(name = "designation_bien", length = 30)
    public String getDesignationBien() {
        return designationBien;
    }

    public void setDesignationBien(String designationBien) {
        this.designationBien = designationBien;
    }

    public Arme designationBien(String designationBien) {
        setDesignationBien(designationBien);
        return this;
    }

    // -- [calibre] ------------------------

    @Digits(integer = 3, fraction = 2)
    @Column(name = "calibre", precision = 3, scale = 2)
    public Double getCalibre() {
        return calibre;
    }

    public void setCalibre(Double calibre) {
        this.calibre = calibre;
    }

    public Arme calibre(Double calibre) {
        setCalibre(calibre);
        return this;
    }

    // -----------------------------------------------------------------
    // Many to One support
    // -----------------------------------------------------------------

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    // many-to-one: Arme.codeTypeArme ==> TypeArme.id
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @NotNull
    @JoinColumn(name = "code_type_arme", nullable = false)
    @ManyToOne(cascade = { PERSIST, MERGE }, fetch = LAZY)
    public TypeArme getCodeTypeArme() {
        return codeTypeArme;
    }

    /**
     * Set the {@link #codeTypeArme} without adding this Arme instance on the passed {@link #codeTypeArme}
     */
    public void setCodeTypeArme(TypeArme codeTypeArme) {
        this.codeTypeArme = codeTypeArme;
    }

    public Arme codeTypeArme(TypeArme codeTypeArme) {
        setCodeTypeArme(codeTypeArme);
        return this;
    }

    // -----------------------------------------------------------------
    // One to one
    // -----------------------------------------------------------------

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    // Owner side of one-to-one relation: Arme.id ==> Biens.id
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    @JoinColumn(name = "numero_bien", nullable = false, unique = true)
    @MapsId
    @OneToOne(fetch = LAZY)
    public Biens getBiens() {
        return biens;
    }

    public void setBiens(Biens biens) {
        this.biens = biens;
    }

    public Arme biens(Biens biens) {
        setBiens(biens);
        return this;
    }

    /**
     * Apply the default values.
     */
    public Arme withDefaults() {
        return this;
    }

    /**
     * Equals implementation using a business key.
     */
    @Override
    public boolean equals(Object other) {
        return this == other || (other instanceof Arme && hashCode() == other.hashCode());
    }

    private IdentifiableHashBuilder identifiableHashBuilder = new IdentifiableHashBuilder();

    @Override
    public int hashCode() {
        return identifiableHashBuilder.hash(log, this);
    }

    /**
     * Construct a readable string representation for this Arme instance.
     * @see java.lang.Object#toString()
     */
    @Override
    public String toString() {
        return Objects.toStringHelper(this) //
                .add(Arme_.id.getName(), getId()) //
                .add(Arme_.designationBien.getName(), getDesignationBien()) //
                .add(Arme_.calibre.getName(), getCalibre()) //
                .toString();
    }
}