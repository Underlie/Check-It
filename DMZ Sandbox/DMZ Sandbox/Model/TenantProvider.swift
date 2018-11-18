//
//  TenantProvider.swift
//  DMZ Sandbox
//
//  Created by Karan Bhagat - Personal on 2018-11-17.
//  Copyright © 2018 Karan Bhagat - Personal. All rights reserved.
//

import Foundation


class TenantProvider {
    
    let tenantNameForIds: [String: String] = ["0001": "John Doe", "0002":"Michael Bay", "0003":"Kenny Wick", "0004":"Timmy Hilfiger"]
    
    let tenantIds: [String] = ["0001", "0002", "0003", "0004"]
    
    var tenants: [Tenant] = []
    
    init (){
    
        // Bad Review, Good Ref
        let tenantOne = Tenant(name: "John Doe", id: "0001", review:  "Horrible Tenant, did not pay rent on time, occasionally causing havoc.", reference: [.bank: true, .realEstates: true],date:"11/11/2018")
        
        // Good Tenant
        let tenantTwo = Tenant(name: "Michael Bay", id: "0002", review:  "Pays rent on time. Does not party often.", reference: [.bank: true, .realEstates: true],date:"11/11/2017")
        
        // Questionable
        let tenantThree = Tenant(name: "Kenny Wick", id: "0003", review:  "Amazing neighbour, always helps me bring the groceries", reference: [.bank: false, .realEstates: true],date:"11/09/2018")
        
        //  Complete trash
        let tenantFour = Tenant(name: "Timmy Hilfiger", id: "0004", review:  "Tenant always partying and never pays on time.", reference: [.bank: false, .realEstates: false],date:"01/01/2018")
        
        let tenantTwoPart2 = Tenant(name: "Michael Bay", id: "0002", review:  "Great neighbour!", reference: [.bank: true, .realEstates: true],date:"02/11/2017")
        
         let tenantThreePart2 = Tenant(name: "Kenny Wick", id: "0003", review:  "Sketchy neighbor.", reference: [.bank: true, .realEstates: true],date:"11/01/2018")
        
        self.tenants.append(tenantOne)
        self.tenants.append(tenantTwo)
        self.tenants.append(tenantThree)
        self.tenants.append(tenantFour)
        self.tenants.append(tenantTwoPart2)
        self.tenants.append(tenantThreePart2)
        
    }
}
