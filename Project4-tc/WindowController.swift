//
//  WindowController.swift
//  Project4
//
//  Created by Thomas Carroll on 4/13/20.
//  Copyright © 2020 Thomas Carroll. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {

    @IBOutlet var addressEntry: NSToolbarItem!
    
    override func windowDidLoad() {
        super.windowDidLoad()
        window?.titleVisibility = .hidden

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }

}