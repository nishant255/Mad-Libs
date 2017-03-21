//
//  ComposeMadLibsDelegate.swift
//  MadLibs
//
//  Created by Nishant Patel on 3/17/17.
//  Copyright © 2017 Nishant Patel. All rights reserved.
//

import Foundation

protocol ComposeMadLibsViewControllerDelegate: class {
    func madlibSubmitted(_ controller: ComposeMadLibsViewController, with madlibs: [String])
}
