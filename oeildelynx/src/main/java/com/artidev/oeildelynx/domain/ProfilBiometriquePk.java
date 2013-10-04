/*
 * (c) Copyright 2005-2013 JAXIO, http://www.jaxio.com
 * Source code generated by Celerio, a Jaxio product
 * Want to purchase Celerio ? email us at info@jaxio.com
 * Follow us on twitter: @springfuse
 * Documentation: http://www.jaxio.com/documentation/celerio/
 * Template pack-backend-jpa:src/main/java/domain/CompositePk.cpk.vm.java
 */
package com.artidev.oeildelynx.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Transient;

import com.google.common.base.Objects;

@Embeddable
public class ProfilBiometriquePk implements Comparable<ProfilBiometriquePk>, Serializable {
    private static final long serialVersionUID = 1L;

    private Integer codeMarquage;
    private Integer numeroPers;

    public ProfilBiometriquePk() {
    }

    public ProfilBiometriquePk(Integer codeMarquage, Integer numeroPers) {
        this.codeMarquage = codeMarquage;
        this.numeroPers = numeroPers;
    }

    /**
     * Helper to determine if this composite primary key is fully set.
     */
    @Transient
    public boolean areFieldsSet() {
        return isCodeMarquageSet() && isNumeroPersSet();
    }

    /**
     * Helper method to determine if this instance is considered empty, that is,
     * if all the non primary key columns are null.
     */
    @Transient
    public boolean isEmpty() {
        return !isCodeMarquageSet() && !isNumeroPersSet();
    }

    //-- [codeMarquage] ------------------------------

    @Column(name = "code_marquage", nullable = false, precision = 5)
    public Integer getCodeMarquage() {
        return codeMarquage;
    }

    public void setCodeMarquage(Integer codeMarquage) {
        this.codeMarquage = codeMarquage;
    }

    public ProfilBiometriquePk codeMarquage(Integer codeMarquage) {
        setCodeMarquage(codeMarquage);
        return this;
    }

    /**
     * Helper that determines if this attribute is set or not.
     */
    @Transient
    public boolean isCodeMarquageSet() {
        return getCodeMarquage() != null;
    }

    //-- [numeroPers] ------------------------------

    @Column(name = "numero_pers", nullable = false, precision = 10)
    public Integer getNumeroPers() {
        return numeroPers;
    }

    public void setNumeroPers(Integer numeroPers) {
        this.numeroPers = numeroPers;
    }

    public ProfilBiometriquePk numeroPers(Integer numeroPers) {
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

    @Override
    public boolean equals(Object other) {
        return this == other || (other instanceof ProfilBiometriquePk && hashCode() == other.hashCode());
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(getCodeMarquage(), getNumeroPers());
    }

    @Override
    public int compareTo(ProfilBiometriquePk other) {
        return other == null ? -1 : hashCode() - other.hashCode();
    }

    /**
     * Return the string representation of the composite primary key, it should be reversable by version produced by the {@link #String()} method
     */
    @Override
    public String toString() {
        StringBuilder result = new StringBuilder();
        if (isCodeMarquageSet()) {
            result.append(getCodeMarquage());
        }
        result.append(":");
        if (isNumeroPersSet()) {
            result.append(getNumeroPers());
        }

        return result.toString();
    }

    /**
     * Build an instance from a string version produced by the {@link #toString()} method
     */
   /* public static ProfilBiometriquePk fromString(String string) {
        ProfilBiometriquePk result = new ProfilBiometriquePk();
        String[] values = string.split(":");
        if (isNotEmpty(values[0])) {
            result.setCodeMarquage(Integer.valueOf(values[0]));
        }
        if (isNotEmpty(values[1])) {
            result.setNumeroPers(Integer.valueOf(values[1]));
        }

        return result;
    }*/
}
