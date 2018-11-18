//
//  Tenant.swift
//  DMZ Sandbox
//
//  Created by Karan Bhagat - Personal on 2018-11-17.
//  Copyright © 2018 Karan Bhagat - Personal. All rights reserved.
//

import Foundation

class Tenant {
    
    enum PossibleReferences {
        case bank
        case realEstates
    }
    
    let name: String
    let id: String
    let review: String
    let reference: [PossibleReferences: Bool]
    let date: String
    

    init(name: String, id: String, review: String, reference: [PossibleReferences : Bool], date : String) {
        self.name = name
        self.review = review
        self.id = id
        self.reference = reference
        self.date = date
    }
    
}
extension Tenant: Equatable{
    static func == (lhs: Tenant, rhs: Tenant) -> Bool {
        return lhs.name == rhs.name &&
            lhs.id == rhs.id &&
            lhs.review == rhs.review &&
            lhs.reference == rhs.reference &&
            lhs.date == rhs.date
    }
}
 extension Tenant: Hashable{
    var hashValue: Int{
        return name.hashValue ^ id.hashValue ^ review.hashValue ^ reference.hashValue ^ date.hashValue
    }
}
