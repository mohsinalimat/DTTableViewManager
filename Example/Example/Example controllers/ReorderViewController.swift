//
//  ReorderViewController.swift
//  DTTableViewManager
//
//  Created by Denys Telezhkin on 02.08.15.
//  Copyright (c) 2015 Denys Telezhkin. All rights reserved.
//

import UIKit
import DTTableViewManager
import ModelStorage

class ReorderViewController: DTTableViewController {

    override func setEditing(editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        self.tableView.setEditing(editing, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.registerCellClass(StringCell)
        
        self.memoryStorage.addItems(["Section 1 cell", "Section 1 cell"], toSection: 0)
        self.memoryStorage.addItems(["Section 2 cell"], toSection: 1)
        self.memoryStorage.addItems(["Section 3 cell", "Section 3 cell", "Section 3 cell"], toSection: 2)
        
        self.memoryStorage.setSectionHeaderModels(["Section 1", "Section 2", "Section 3"])
        
        self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
     func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
     func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        return .None
    }
}
