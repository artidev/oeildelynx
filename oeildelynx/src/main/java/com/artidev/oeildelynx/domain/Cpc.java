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
import static javax.persistence.TemporalType.DATE;

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
import javax.xml.bind.annotation.XmlTransient;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.common.base.Objects;

@Entity
@Table(name = "cpc")
public class Cpc implements Identifiable<Integer>, Serializable {
    private static final long serialVersionUID = 1L;
    private static final Logger log = LoggerFactory.getLogger(Cpc.class);

    // Raw attributes
    private Integer id;
    private Double montantCpc;
    private Date dateCpc;

    // Many to one
    private Condamnation numCondamnation;

    // -- [id] ------------------------

    @Override
    @Column(name = "numero_cpc", precision = 10)
    @GeneratedValue
    @Id
    public Integer getId() {
        return id;
    }

    @Override
    public void setId(Integer id) {
        this.id = id;
    }

    public Cpc id(Integer id) {
        setId(id);
        return this;
    }

    @Override
    @Transient
    @XmlTransient
    public boolean isIdSet() {
        return id != null;
    }

    // -- [montantCpc] ------------------------

    @Column(name = "montant_cpc", precision = 2147483647)
    public Double getMontantCpc() {
        return montantCpc;
    }

    public void setMontantCpc(Double montantCpc) {
        this.montantCpc = montantCpc;
    }

    public Cpc montantCpc(Double montantCpc) {
        setMontantCpc(montantCpc);
        return this;
    }

    // -- [dateCpc] ------------------------

    @Column(name = "date_cpc", length = 13)
    @Temporal(DATE)
    public Date getDateCpc() {
        return dateCpc;
    }

    public void setDateCpc(Date dateCpc) {
        this.dateCpc = dateCpc;
    }

    public Cpc dateCpc(Date dateCpc) {
        setDateCpc(dateCpc);
        return this;
    }

    // -----------------------------------------------------------------
    // Many to One support
    // -----------------------------------------------------------------

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    // many-to-one: Cpc.numCondamnation ==> Condamnation.id
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @NotNull
    @JoinColumn(name = "num_condamnation", nullable = false)
    @ManyToOne(cascade = { PERSIST, MERGE }, fetch = LAZY)
    public Condamnation getNumCondamnation() {
        return numCondamnation;
    }

    /**
     * Set the {@link #numCondamnation} without adding this Cpc instance on the passed {@link #numCondamnation}
     */
    public void setNumCondamnation(Condamnation numCondamnation) {
        this.numCondamnation = numCondamnation;
    }

    public Cpc numCondamnation(Condamnation numCondamnation) {
        setNumCondamnation(numCondamnation);
        return this;
    }

    /**
     * Apply the default values.
     */
    public Cpc withDefaults() {
        return this;
    }

    /**
     * Equals implementation using a business key.
     */
    @Override
    public boolean equals(Object other) {
        return this == other || (other instanceof Cpc && hashCode() == other.hashCode());
    }

    private IdentifiableHashBuilder identifiableHashBuilder = new IdentifiableHashBuilder();

    @Override
    public int hashCode() {
        return identifiableHashBuilder.hash(log, this);
    }

    /**
     * Construct a readable string representation for this Cpc instance.
     * @see java.lang.Object#toString()
     */
    @Override
    public String toString() {
        return Objects.toStringHelper(this) //
                .add(Cpc_.id.getName(), getId()) //
                .add(Cpc_.montantCpc.getName(), getMontantCpc()) //
                .add(Cpc_.dateCpc.getName(), getDateCpc()) //
                .toString();
    }
}