/*
 * (c) Copyright 2005-2013 JAXIO, http://www.jaxio.com
 * Source code generated by Celerio, a Jaxio product
 * Want to purchase Celerio ? email us at info@jaxio.com
 * Follow us on twitter: @springfuse
 * Documentation: http://www.jaxio.com/documentation/celerio/
 * Template pack-backend-jpa:src/main/java/domain/CompositePk.cpk.vm.java
 */
package com.artidev.oeildelynx.domain;

import static javax.persistence.TemporalType.DATE;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Temporal;
import javax.persistence.Transient;

import com.google.common.base.Objects;

@Embeddable
public class ResidencePersonnePk implements Comparable<ResidencePersonnePk>, Serializable {
    private static final long serialVersionUID = 1L;

    private Integer numeroPers;
    private Integer codeLocalite;
    private Date date;

    public ResidencePersonnePk() {
    }

    public ResidencePersonnePk(Integer numeroPers, Integer codeLocalite, Date date) {
        this.numeroPers = numeroPers;
        this.codeLocalite = codeLocalite;
        this.date = date;
    }

    /**
     * Helper to determine if this composite primary key is fully set.
     */
    @Transient
    public boolean areFieldsSet() {
        return isNumeroPersSet() && isCodeLocaliteSet() && isDateSet();
    }

    /**
     * Helper method to determine if this instance is considered empty, that is,
     * if all the non primary key columns are null.
     */
    @Transient
    public boolean isEmpty() {
        return !isNumeroPersSet() && !isCodeLocaliteSet() && !isDateSet();
    }

    //-- [numeroPers] ------------------------------

    @Column(name = "numero_pers", nullable = false, precision = 10)
    public Integer getNumeroPers() {
        return numeroPers;
    }

    public void setNumeroPers(Integer numeroPers) {
        this.numeroPers = numeroPers;
    }

    public ResidencePersonnePk numeroPers(Integer numeroPers) {
        setNumeroPers(numeroPers);
        return this;
    }

    /**
     * Helper that determines if this attribute is set or not.
     */
    @Transient
    public boolean isNumeroPersSet() {
        return getNumeroPers() != null;
    }

    //-- [codeLocalite] ------------------------------

    @Column(name = "code_localite", nullable = false, precision = 10)
    public Integer getCodeLocalite() {
        return codeLocalite;
    }

    public void setCodeLocalite(Integer codeLocalite) {
        this.codeLocalite = codeLocalite;
    }

    public ResidencePersonnePk codeLocalite(Integer codeLocalite) {
        setCodeLocalite(codeLocalite);
        return this;
    }

    /**
     * Helper that determines if this attribute is set or not.
     */
    @Transient
    public boolean isCodeLocaliteSet() {
        return getCodeLocalite() != null;
    }

    //-- [date] ------------------------------

    @Column(name = "`date`", nullable = false, length = 13)
    @Temporal(DATE)
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public ResidencePersonnePk date(Date date) {
        setDate(date);
        return this;
    }

    /**
     * Helper that determines if this attribute is set or not.
     */
    @Transient
    public boolean isDateSet() {
        return getDate() != null;
    }

    @Override
    public boolean equals(Object other) {
        return this == other || (other instanceof ResidencePersonnePk && hashCode() == other.hashCode());
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(getNumeroPers(), getCodeLocalite(), getDate());
    }

    @Override
    public int compareTo(ResidencePersonnePk other) {
        return other == null ? -1 : hashCode() - other.hashCode();
    }

    /**
     * Return the string representation of the composite primary key, it should be reversable by version produced by the {@link #String()} method
     */
    @Override
    public String toString() {
        StringBuilder result = new StringBuilder();
        if (isNumeroPersSet()) {
            result.append(getNumeroPers());
        }
        result.append(":");
        if (isCodeLocaliteSet()) {
            result.append(getCodeLocalite());
        }
        result.append(":");
        if (isDateSet()) {
            result.append(getDate().getTime());
        }

        return result.toString();
    }

    /**
     * Build an instance from a string version produced by the {@link #toString()} method
     */
    /*public static ResidencePersonnePk fromString(String string) {
        ResidencePersonnePk result = new ResidencePersonnePk();
        String[] values = string.split(":");
        if (isNotEmpty(values[0])) {
            result.setNumeroPers(Integer.valueOf(values[0]));
        }
        if (isNotEmpty(values[1])) {
            result.setCodeLocalite(Integer.valueOf(values[1]));
        }
        if (isNotEmpty(values[2])) {
            result.setDate(new java.util.Date(Long.parseLong(values[2])));
        }

        return result;
    }*/
}