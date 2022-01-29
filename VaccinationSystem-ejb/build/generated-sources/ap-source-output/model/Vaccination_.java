package model;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-12-01T14:29:31")
@StaticMetamodel(Vaccination.class)
public class Vaccination_ { 

    public static volatile SingularAttribute<Vaccination, String> publicUserId;
    public static volatile SingularAttribute<Vaccination, String> clinicId;
    public static volatile SingularAttribute<Vaccination, String> firstDoseDate;
    public static volatile SingularAttribute<Vaccination, String> vaccineBrand;
    public static volatile SingularAttribute<Vaccination, String> secondDoseDate;
    public static volatile SingularAttribute<Vaccination, Long> vaccinationId;
    public static volatile SingularAttribute<Vaccination, String> firstDoseTime;
    public static volatile SingularAttribute<Vaccination, String> secondDoseTime;
    public static volatile SingularAttribute<Vaccination, String> status;

}