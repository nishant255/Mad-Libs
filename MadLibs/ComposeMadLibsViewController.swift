//
//  ComposeMadLibsViewController.swift
//  MadLibs
//
//  Created by Nishant Patel on 3/17/17.
//  Copyright © 2017 Nishant Patel. All rights reserved.
//

import UIKit

class ComposeMadLibsViewController: UIViewController {

    weak var delegate: ComposeMadLibsViewControllerDelegate?
    
    var madlibs = [String?](repeating: nil, count: 4)
    
    @IBOutlet weak var adjective: UITextField!
    @IBOutlet weak var verb1: UITextField!
    @IBOutlet weak var verb2: UITextField!
    @IBOutlet weak var noun: UITextField!
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        madlibs[0] = adjective.text
        madlibs[1] = verb1.text
        madlibs[2] = verb2.text
        madlibs[3] = noun.text
        delegate?.madlibSubmitted(self, with: madlibs as! [String])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
