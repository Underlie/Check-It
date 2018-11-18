//
//  TenantSelectionTableViewController.swift
//  DMZ Sandbox
//
//  Created by Karan Bhagat - Personal on 2018-11-17.
//  Copyright © 2018 Karan Bhagat - Personal. All rights reserved.
//

import UIKit

class TenantSelectionTableViewController: UITableViewController {
    
    let tenantCell = "tenantCellReuseIdentifier"
    let tenantDetailSegue = "tenantDetailSegueIdentifier"
    let blockChainProvider = BlockchainProvider()

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return blockChainProvider.tenantProvider.tenantIds.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tenantCell, for: indexPath)
        
        let tenantName =  blockChainProvider.tenantProvider.tenantNameForIds[blockChainProvider.tenantProvider.tenantIds[indexPath.row]]
        
        cell.textLabel?.text = tenantName!
        cell.detailTextLabel?.text = blockChainProvider.blockchain.chain[indexPath.row].tenant.date
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc: TenantProfileTableViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "tenantDetailViewController") as! UITableViewController as! TenantProfileTableViewController
        
        vc.tenant = blockChainProvider.blockchain.chain[indexPath.row].tenant
        vc.chain = blockChainProvider.blockchain.chain
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }




 


}
