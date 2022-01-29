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
public class Ministry extends VSUser implements Serializable {

    private static final long serialVersionUID = 1L;

    public Ministry(String id, String password, String userRole, String name, String gender, String phone, String ic, String email, String address) {
        super(id, password, userRole, name, gender, phone, ic, email, address);
    }

    public Ministry() {
    }

}
