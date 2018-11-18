//
//  BlockchainProvider.swift
//  DMZ Sandbox
//
//  Created by Karan Bhagat - Personal on 2018-11-17.
//  Copyright © 2018 Karan Bhagat - Personal. All rights reserved.
//

import Foundation

class BlockchainProvider {
    let blockchain: Blockchain = Blockchain()
    let tenantProvider = TenantProvider()
    init() {
        for tenant in tenantProvider.tenants {
            blockchain.createBlock(data: tenant)
        }
    }
}
