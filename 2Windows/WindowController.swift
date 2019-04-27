//
//  WindowController.swift
//  2Windows
//
//  Created by Caleb Strockbine on 4/27/19.
//  Copyright © 2019 strockbine.net. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    var text : String {
        get {
            var t = ""
            guard let vc = self.contentViewController as? ViewController else { return t }
            guard let tv = vc.textView else { return t }
            t = tv.string
            return t
        }
        set(text) {
            guard let vc = self.contentViewController as? ViewController else { return }
            guard let tv = vc.textView else { return }
            tv.string = text
        }
    }

}
