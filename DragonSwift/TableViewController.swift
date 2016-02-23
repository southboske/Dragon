//
//  TableViewController.swift
//  DragonSwift
//
//  Created by south boske on 1/28/16.
//  Copyright © 2016 south boske. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var dragons: [Dragon]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dragonOne = Dragon(name: "Peperino", swag: "El titino")
        let dragonTwo = Dragon(name: "Tintin", swag: "San Loquin")
        let dragonThree = Dragon(name: "Beto", swag: "Pepeto")
        let dragonFour = Dragon(name: "Cuperto", swag: "Sabroson")
        let dragonFive = Dragon(name: "El Oso", swag: "Celoso")
        
        dragons = [dragonOne, dragonTwo, dragonThree, dragonFour, dragonFive]

    }
    
    override func tableView(Tableview: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dragons.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CellID", forIndexPath: indexPath)
        let dragon = self.dragons[indexPath.row]
        cell.textLabel!.text = dragon.name
        cell.detailTextLabel!.text = dragon.swag
        
        return cell
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! DetailViewController
        let indexPath = self.tableView.indexPathForSelectedRow
        let dragon = self.dragons[indexPath!.row]
        dvc.title = dragon.name
        dvc.dragon = dragon
    }
    
}
