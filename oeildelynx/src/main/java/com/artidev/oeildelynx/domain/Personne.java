/*
 * (c) Copyright 2005-2013 JAXIO, http://www.jaxio.com
 * Source code generated by Celerio, a Jaxio product
 * Want to purchase Celerio ? email us at info@jaxio.com
 * Follow us on twitter: @springfuse
 * Documentation: http://www.jaxio.com/documentation/celerio/
 * Template pack-backend-jpa:src/main/java/domain/Entity.e.vm.java
 */
package com.artidev.oeildelynx.domain;

//import static javax.persistence.CascadeType.MERGE;
//import static javax.persistence.CascadeType.PERSIST;
//import static javax.persistence.FetchType.LAZY;
//import static javax.persistence.TemporalType.DATE;


import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlTransient;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.common.base.Objects;

@Entity
@Table(name = "personne")
public class Personne implements Identifiable<Integer>, Serializable {
    private static final long serialVersionUID = 1L;
    private static final Logger log = LoggerFactory.getLogger(Personne.class);

    // Raw attributes
    private Integer id;
    private String nomPers;
    private String prenomsPers;
    private Date dateNaissancePersonne;
    private String nomPrenomsPere;
    private String nomPrenomsMere;

    // Many to one
    private Genre codeGenre;
    private SitMatrimoniale codeSituation;
    private Pays codePays;
    private Religion codeReligion;
    private Ethnie codeEthnie;
    private Profession codeProfession;
    private Localite codeLocalite;

    // -- [id] ------------------------

    @Override
    @Column(name = "numero_pers", precision = 10)
    @GeneratedValue
    @Id
    public Integer getId() {
        return id;
    }

    @Override
    public void setId(Integer id) {
        this.id = id;
    }

    public Personne id(Integer id) {
        setId(id);
        return this;
    }

    @Override
    @Transient
    @XmlTransient
    public boolean isIdSet() {
        return id != null;
    }

    // -- [nomPers] ------------------------

    @Size(max = 20)
    @Column(name = "nom_pers", length = 20)
    public String getNomPers() {
        return nomPers;
    }

    public void setNomPers(String nomPers) {
        this.nomPers = nomPers;
    }

    public Personne nomPers(String nomPers) {
        setNomPers(nomPers);
        return this;
    }

    // -- [prenomsPers] ------------------------

    @Size(max = 40)
    @Column(name = "prenoms_pers", length = 40)
    public String getPrenomsPers() {
        return prenomsPers;
    }

    public void setPrenomsPers(String prenomsPers) {
        this.prenomsPers = prenomsPers;
    }

    public Personne prenomsPers(String prenomsPers) {
        setPrenomsPers(prenomsPers);
        return this;
    }

    // -- [dateNaissancePersonne] ------------------------

    @Column(name = "date_naissance_personne", length = 13)
   // @Temporal(DATE)
    public Date getDateNaissancePersonne() {
        return dateNaissancePersonne;
    }

    public void setDateNaissancePersonne(Date dateNaissancePersonne) {
        this.dateNaissancePersonne = dateNaissancePersonne;
    }

    public Personne dateNaissancePersonne(Date dateNaissancePersonne) {
        setDateNaissancePersonne(dateNaissancePersonne);
        return this;
    }

    // -- [nomPrenomsPere] ------------------------

    @Size(max = 60)
    @Column(name = "nom_prenoms_pere", length = 60)
    public String getNomPrenomsPere() {
        return nomPrenomsPere;
    }

    public void setNomPrenomsPere(String nomPrenomsPere) {
        this.nomPrenomsPere = nomPrenomsPere;
    }

    public Personne nomPrenomsPere(String nomPrenomsPere) {
        setNomPrenomsPere(nomPrenomsPere);
        return this;
    }

    // -- [nomPrenomsMere] ------------------------

    @Size(max = 60)
    @Column(name = "nom_prenoms_mere", length = 60)
    public String getNomPrenomsMere() {
        return nomPrenomsMere;
    }

    public void setNomPrenomsMere(String nomPrenomsMere) {
        this.nomPrenomsMere = nomPrenomsMere;
    }

    public Personne nomPrenomsMere(String nomPrenomsMere) {
        setNomPrenomsMere(nomPrenomsMere);
        return this;
    }

    // -----------------------------------------------------------------
    // Many to One support
    // -----------------------------------------------------------------

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    // many-to-one: Personne.codeGenre ==> Genre.id
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @NotNull
    @JoinColumn(name = "code_genre", nullable = false)
   // @ManyToOne(cascade = { PERSIST, MERGE }, fetch = LAZY)
    public Genre getCodeGenre() {
        return codeGenre;
    }

    /**
     * Set the {@link #codeGenre} without adding this Personne instance on the passed {@link #codeGenre}
     */
    public void setCodeGenre(Genre codeGenre) {
        this.codeGenre = codeGenre;
    }

    public Personne codeGenre(Genre codeGenre) {
        setCodeGenre(codeGenre);
        return this;
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    // many-to-one: Personne.codeSituation ==> SitMatrimoniale.id
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @NotNull
    @JoinColumn(name = "code_situation", nullable = false)
    //@ManyToOne(cascade = { PERSIST, MERGE }, fetch = LAZY)
    public SitMatrimoniale getCodeSituation() {
        return codeSituation;
    }

    /**
     * Set the {@link #codeSituation} without adding this Personne instance on the passed {@link #codeSituation}
     */
    public void setCodeSituation(SitMatrimoniale codeSituation) {
        this.codeSituation = codeSituation;
    }

    public Personne codeSituation(SitMatrimoniale codeSituation) {
        setCodeSituation(codeSituation);
        return this;
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    // many-to-one: Personne.codePays ==> Pays.id
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @NotNull
    @JoinColumn(name = "code_pays", nullable = false)
    //@ManyToOne(cascade = { PERSIST, MERGE }, fetch = LAZY)
    public Pays getCodePays() {
        return codePays;
    }

    /**
     * Set the {@link #codePays} without adding this Personne instance on the passed {@link #codePays}
     */
    public void setCodePays(Pays codePays) {
        this.codePays = codePays;
    }

    public Personne codePays(Pays codePays) {
        setCodePays(codePays);
        return this;
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    // many-to-one: Personne.codeReligion ==> Religion.id
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @NotNull
    @JoinColumn(name = "code_religion", nullable = false)
    //@ManyToOne(cascade = { PERSIST, MERGE }, fetch = LAZY)
    public Religion getCodeReligion() {
        return codeReligion;
    }

    /**
     * Set the {@link #codeReligion} without adding this Personne instance on the passed {@link #codeReligion}
     */
    public void setCodeReligion(Religion codeReligion) {
        this.codeReligion = codeReligion;
    }

    public Personne codeReligion(Religion codeReligion) {
        setCodeReligion(codeReligion);
        return this;
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    // many-to-one: Personne.codeEthnie ==> Ethnie.id
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @NotNull
    @JoinColumn(name = "code_ethnie", nullable = false)
   // @ManyToOne(cascade = { PERSIST, MERGE }, fetch = LAZY)
    public Ethnie getCodeEthnie() {
        return codeEthnie;
    }

    /**
     * Set the {@link #codeEthnie} without adding this Personne instance on the passed {@link #codeEthnie}
     */
    public void setCodeEthnie(Ethnie codeEthnie) {
        this.codeEthnie = codeEthnie;
    }

    public Personne codeEthnie(Ethnie codeEthnie) {
        setCodeEthnie(codeEthnie);
        return this;
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    // many-to-one: Personne.codeProfession ==> Profession.id
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @NotNull
    @JoinColumn(name = "code_profession", nullable = false)
   // @ManyToOne(cascade = { PERSIST, MERGE }, fetch = LAZY)
    public Profession getCodeProfession() {
        return codeProfession;
    }

    /**
     * Set the {@link #codeProfession} without adding this Personne instance on the passed {@link #codeProfession}
     */
    public void setCodeProfession(Profession codeProfession) {
        this.codeProfession = codeProfession;
    }

    public Personne codeProfession(Profession codeProfession) {
        setCodeProfession(codeProfession);
        return this;
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    // many-to-one: Personne.codeLocalite ==> Localite.id
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @NotNull
    @JoinColumn(name = "code_localite", nullable = false)
    //@ManyToOne(cascade = { PERSIST, MERGE }, fetch = LAZY)
    public Localite getCodeLocalite() {
        return codeLocalite;
    }

    /**
     * Set the {@link #codeLocalite} without adding this Personne instance on the passed {@link #codeLocalite}
     */
    public void setCodeLocalite(Localite codeLocalite) {
        this.codeLocalite = codeLocalite;
    }

    public Personne codeLocalite(Localite codeLocalite) {
        setCodeLocalite(codeLocalite);
        return this;
    }

    /**
     * Apply the default values.
     */
    public Personne withDefaults() {
        return this;
    }

    /**
     * Equals implementation using a business key.
     */
    @Override
    public boolean equals(Object other) {
        return this == other || (other instanceof Personne && hashCode() == other.hashCode());
    }

    private IdentifiableHashBuilder identifiableHashBuilder = new IdentifiableHashBuilder();

    @Override
    public int hashCode() {
        return identifiableHashBuilder.hash(log, this);
    }

    /**
     * Construct a readable string representation for this Personne instance.
     * @see java.lang.Object#toString()
     */
    @Override
    public String toString() {
        return Objects.toStringHelper(this) //
                .add(Personne_.id.getName(), getId()) //
                .add(Personne_.nomPers.getName(), getNomPers()) //
                .add(Personne_.prenomsPers.getName(), getPrenomsPers()) //
                .add(Personne_.dateNaissancePersonne.getName(), getDateNaissancePersonne()) //
                .add(Personne_.nomPrenomsPere.getName(), getNomPrenomsPere()) //
                .add(Personne_.nomPrenomsMere.getName(), getNomPrenomsMere()) //
                .toString();
    }
}