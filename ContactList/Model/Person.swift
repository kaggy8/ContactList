//
//  Person.swift
//  ContactList
//
//  Created by Stanislav Demyanov on 15.06.2022.
//

struct Person {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getUser() -> [Person] {
        let data = DataManager()

        var firstNameArray: [String] = []
        var lastNameArray: [String] = []
        var phoneNumberArray: [String] = []
        var emailArray: [String] = []
        var object: [Person] = []
        
        for _ in data.firstName {
            if firstNameArray.isEmpty {
                firstNameArray = data.firstName
                firstNameArray.shuffle()
                
                lastNameArray = data.lastName
                lastNameArray.shuffle()
                
                phoneNumberArray = data.phoneNumber
                phoneNumberArray.shuffle()
                
                emailArray = data.email
                emailArray.shuffle()
            }
            
            let firstName = firstNameArray.removeFirst()
            let lastName = lastNameArray.removeFirst()
            let phoneNumber = phoneNumberArray.removeFirst()
            let email = emailArray.removeFirst()
            
            object.append(Person(firstName: firstName,
                                 lastName: lastName,
                                 phoneNumber: phoneNumber,
                                 email: email))
        }
        
        return object
    }
}
