/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.*;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

/**
 *
 * @author user
 */
@Entity
public class PublicUser extends VSUser implements Serializable {

    private static final long serialVersionUID = 1L;

    private String vaccinationStatus;
    private String feedback;

    public PublicUser(String vaccinationStatus, String feedback, String id, String password, String userRole, String name, String gender, String phone, String ic, String email, String address) {
        super(id, password, userRole, name, gender, phone, ic, email, address);
        this.vaccinationStatus = vaccinationStatus;
        this.feedback = feedback;
    }

    public PublicUser() {
    }

    public String getVaccinationStatus() {
        return vaccinationStatus;
    }

    public void setVaccinationStatus(String vaccinationStatus) {
        this.vaccinationStatus = vaccinationStatus;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

}
