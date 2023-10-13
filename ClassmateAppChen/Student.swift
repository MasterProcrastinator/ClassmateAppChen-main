//
//  Student.swift
//  ClassmateAppChen
//
//  Created by ALVIN CHEN on 10/12/23.
//

import Foundation

enum Rating{
    case peak_mid
    case mid
    case below_mid
    case not_og
}

public class Student{
    
    var firstName : String
    var lastName : String
    var rating : Rating
    var situation : String
    
    
    init(firstName: String, lastName: String, rating: Rating, situation : String){
        self.firstName = firstName
        self.lastName = lastName
        self.rating = rating
        self.situation = situation
    }
    
    
    
    
}
