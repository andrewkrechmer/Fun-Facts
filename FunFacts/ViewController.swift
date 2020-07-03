//
//  ViewController.swift
//  FunFacts
//
//  Created by Andrew Krechmer on 2020-05-24.
//  Copyright © 2020 Andrew Krechmer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    let factProvider = FactProvider()
    let colorProvider = BackgroundColorProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        funFactLabel.text = factProvider.randomFact()
    }

    @IBAction func showFact() {
        
        funFactLabel.text = factProvider.randomFact()
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        
    }
    
}

