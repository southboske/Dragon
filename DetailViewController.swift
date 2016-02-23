//
//  DetailViewController.swift
//  DragonSwift
//
//  Created by south boske on 1/28/16.
//  Copyright © 2016 south boske. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var dragon: Dragon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = dragon.swag
    }
    
}
