/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.ArrayList;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

/**
 *
 * @author user
 */
@Entity
public class Clinic extends VSUser implements Serializable {

    private static final long serialVersionUID = 1L;
    private String clinicId;
    private String clinicName;
    private String clinicAddress;
    private String clinicState;
    private String feedback;

    public Clinic(String clinicId, String clinicName, String clinicAddress, String clinicState, String feedback, String id, String password, String userRole, String name, String gender, String phone, String ic, String email, String address) {
        super(id, password, userRole, name, gender, phone, ic, email, address);
        this.clinicId = clinicId;
        this.clinicName = clinicName;
        this.clinicAddress = clinicAddress;
        this.clinicState = clinicState;
        this.feedback = feedback;
    }

    public Clinic() {
    }

    public String getClinicId() {
        return clinicId;
    }

    public void setClinicId(String clinicid) {
        this.clinicId = clinicid;
    }

    public String getClinicName() {
        return clinicName;
    }

    public void setClinicName(String clinicName) {
        this.clinicName = clinicName;
    }

    public String getClinicAddress() {
        return clinicAddress;
    }

    public void setClinicAddress(String clinicAddress) {
        this.clinicAddress = clinicAddress;
    }

    public String getClinicState() {
        return clinicState;
    }

    public void setClinicState(String clinicState) {
        this.clinicState = clinicState;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

}
