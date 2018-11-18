//
//  Blockchain.swift
//  DMZ Sandbox
//
//  Created by Karan Bhagat - Personal on 2018-11-17.
//  Copyright © 2018 Karan Bhagat - Personal. All rights reserved.
//

import Foundation
import UIKit

class Blockchain {
    var chain = [Block]()
    func createBlock(data:Tenant){
        let block = Block()
        block.index = chain.count
        if (chain.count == 0) {
            block.prevHash = nil
        } else {
            block.prevHash = chain[chain.count - 1].hash
        }
        block.tenant = data
        chain.append(block)
    }
    
    
    
}
