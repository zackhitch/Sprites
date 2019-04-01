//
//  ViewController.swift
//  Sprites
//
//  Created by Zack Hitchcock on 4/1/19.
//  Copyright © 2019 Zack Hitchcock. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    @IBOutlet weak var skview: SKView!
    
    var skscene: CustomScene? = nil
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        skscene = CustomScene(size: view.bounds.size)
        skview.presentScene(skscene)
    }
    
}

