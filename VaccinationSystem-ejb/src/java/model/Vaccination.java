/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author user
 */
@Entity
public class Vaccination implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long vaccinationId;
    private String publicUserId;
    private String clinicId;
    private String firstDoseDate;
    private String firstDoseTime;
    private String secondDoseDate;
    private String secondDoseTime;
    private String vaccineBrand;
    private String status;

    public Vaccination(String publicUserId, String clinicId, String firstDoseDate, String firstDoseTime, String secondDoseDate, String secondDoseTime, String vaccineBrand, String status) {
        this.publicUserId = publicUserId;
        this.clinicId = clinicId;
        this.firstDoseDate = firstDoseDate;
        this.firstDoseTime = firstDoseTime;
        this.secondDoseDate = secondDoseDate;
        this.secondDoseTime = secondDoseTime;
        this.vaccineBrand = vaccineBrand;
        this.status = status;
    }

    public Vaccination() {
    }

    public String getFirstDoseDate() {
        return firstDoseDate;
    }

    public void setFirstDoseDate(String firstDoseDate) {
        this.firstDoseDate = firstDoseDate;
    }

    public String getFirstDoseTime() {
        return firstDoseTime;
    }

    public void setFirstDoseTime(String firstDoseTime) {
        this.firstDoseTime = firstDoseTime;
    }

    public String getSecondDoseDate() {
        return secondDoseDate;
    }

    public void setSecondDoseDate(String secondDoseDate) {
        this.secondDoseDate = secondDoseDate;
    }

    public String getSecondDoseTime() {
        return secondDoseTime;
    }

    public void setSecondDoseTime(String secondDoseTime) {
        this.secondDoseTime = secondDoseTime;
    }

    public Long getVaccinationId() {
        return vaccinationId;
    }

    public void setVaccinationId(Long vaccinationId) {
        this.vaccinationId = vaccinationId;
    }

    public String getPublicUserId() {
        return publicUserId;
    }

    public void setPublicUserId(String publicUserId) {
        this.publicUserId = publicUserId;
    }

    public String getClinicId() {
        return clinicId;
    }

    public void setClinicId(String clinicId) {
        this.clinicId = clinicId;
    }

    public String getVaccineBrand() {
        return vaccineBrand;
    }

    public void setVaccineBrand(String vaccineBrand) {
        this.vaccineBrand = vaccineBrand;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (vaccinationId != null ? vaccinationId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the vaccinationId fields are not set
        if (!(object instanceof Vaccination)) {
            return false;
        }
        Vaccination other = (Vaccination) object;
        if ((this.vaccinationId == null && other.vaccinationId != null) || (this.vaccinationId != null && !this.vaccinationId.equals(other.vaccinationId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Vaccination[ id=" + vaccinationId + " ]";
    }

}
