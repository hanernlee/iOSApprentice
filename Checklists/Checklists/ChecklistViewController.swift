//
//  ChecklistViewController.swift
//  Checklists
//
//  Created by Christopher Lee on 15/11/17.
//  Copyright © 2017 Christopher Lee. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    var items: [ChecklistItem]

    required init?(coder aDecoder: NSCoder) {
        items = [ChecklistItem]()
        
        let row0item = ChecklistItem()
        row0item.text = "Walk the dog"
        row0item.checked = false
        items.append(row0item)
        
        let row1item = ChecklistItem()
        row1item.text = "Walk the dog"
        row1item.checked = false
        items.append(row1item)
        
        let row2item = ChecklistItem()
        row2item.text = "Walk the dog"
        row2item.checked = false
        items.append(row2item)
        
        let row3item = ChecklistItem()
        row3item.text = "Walk the dog"
        row3item.checked = false
        items.append(row3item)
        
        let row4item = ChecklistItem()
        row4item.text = "Walk the dog"
        row4item.checked = false
        items.append(row4item)
        
        super.init(coder: aDecoder)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        let item = items[indexPath.row]
        
        configureText(for: cell, with: item)
        configureCheckmark(for: cell, with: item)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            let item = items[indexPath.row]
            item.toggleChecked()
            
            configureCheckmark(for: cell, with: item)
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func configureCheckmark(for cell: UITableViewCell, with item: ChecklistItem) {
        if item.checked {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
    }
    
    func configureText(for cell: UITableViewCell, with item: ChecklistItem) {
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = item.text
    }
}

