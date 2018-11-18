//
//  TenantProfileTableViewController.swift
//  DMZ Sandbox
//
//  Created by Karan Bhagat - Personal on 2018-11-17.
//  Copyright © 2018 Karan Bhagat - Personal. All rights reserved.
//

import UIKit

class TenantProfileTableViewController: UITableViewController {

    let profileCell = "profileCellReuseIdentifier"
    
    var tenant: Tenant!
    var chain: [Block]!
    var reviews: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = tenant.name
        getTenantReviews()
        
    }
    
    func getTenantReviews() {
        for block in chain{
            if(block.tenant.id == tenant.id){
                reviews.append(block.tenant.review)
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0 {
            return 2
        } else if section == 1 {
            return reviews.count
        } else {
            return 1
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:profileCell, for: indexPath)
        if( indexPath.row == 0 && indexPath.section == 0){
          cell.textLabel?.text = "Bank Approval"
            tenant.reference[.bank] ?? false ? cell.accessoryType = .checkmark : nil
        } else if (indexPath.row == 1 && indexPath.section == 0){
             cell.textLabel?.text = "Real Estate"
            tenant.reference[.realEstates] ?? false ? cell.accessoryType = .checkmark : nil
            
        } else if indexPath.section == 1 {
            
            let review = reviews[indexPath.row]
            
            cell.textLabel?.text = review
            
        } else {
            cell.textLabel?.textColor = #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)
            cell.textLabel?.text = "Submit Review"
        }
        

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Approvals"
        } else if section == 1 {
            return "Reviews"
        }
        return nil
        
    }

    
    

}
