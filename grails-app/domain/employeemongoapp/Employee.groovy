package employeemongoapp

import org.bson.types.ObjectId

class Employee {
    ObjectId id
    Integer employeeID
    String firstName
    String lastName
    String nickName
    String personalEmail
    String jobTitle = "Development Engineer"
    String deskLocation
    String reportingManager
    String address
    String city
    String country
    String mobileNumber
    Integer extension
    String ldapUserID
    Double relevantExperience
    Date dateOfBirth
    Date joiningDate

    static constraints = {
        employeeID attr:"employeeID"
        firstName attr:"firstName"
        lastName attr:"lastName"
        nickName attr:"nickName"
        personalEmail attr:"personalEmail"
        jobTitle attr:"jobTitle"
        deskLocation attr:"deskLocation"
        reportingManager attr:"reportingManager"
        mobileNumber attr:"mobileNumber"
        address attr:"address"
        city attr:"city"
        country attr:"country"
        extension attr:"extension"
        ldapUserID attr:"ldapUserID"
        relevantExperience attr:"relevantExperience"
        dateOfBirth attr:"dateOfBirth"
        joiningDate attr:"joiningDate"
    }
}
