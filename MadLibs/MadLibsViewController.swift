//
//  ViewController.swift
//  MadLibs
//
//  Created by Nishant Patel on 3/17/17.
//  Copyright © 2017 Nishant Patel. All rights reserved.
//

import UIKit

class MadLibsViewController: UIViewController, ComposeMadLibsViewControllerDelegate {

    @IBOutlet weak var madLibsLabel: UILabel!
    var madlibStatus:Bool = false
    
    @IBAction func composeMadLibs(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "composeMadlibs", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! ComposeMadLibsViewController
        controller.delegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        madLibsLabel.text = "Compose New MadLibs"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func madlibSubmitted(_ controller: ComposeMadLibsViewController, with madlibs: [String]) {
        madLibsLabel.text = "We are having a perfectly " + madlibs[0] + " time now. Later we will " + madlibs[1] + " and " + madlibs[2] + " in the " + madlibs[3] + "."
        dismiss(animated: true, completion: nil)
    }

}

