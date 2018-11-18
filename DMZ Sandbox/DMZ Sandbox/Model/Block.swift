//
//  Block.swift
//  DMZ Sandbox
//
//  Created by Karan Bhagat - Personal on 2018-11-17.
//  Copyright © 2018 Karan dick Bhagat - Personal. All rights reserved.
//

import Foundation


class Block {
    var tenant: Tenant!
    var hash: Int {
        return self.tenant.hashValue
    }
    var prevHash: Int?
    var index: Int!
    var dateJoined:String!
    
}
