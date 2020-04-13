//
//  ViewController.swift
//  Project4
//
//  Created by Thomas Carroll on 4/13/20.
//  Copyright © 2020 Thomas Carroll. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController, WKNavigationDelegate {
    
    var rows: NSStackView!

    @IBAction func urlEntered(_ sender: NSTextField) {
        
    }
    @IBAction func navigationClicked(_ sender: NSSegmentedControl) {
        
    }
    @IBAction func adjustRows(_ sender: NSSegmentedControl) {
        
    }
    @IBAction func adjustColumns(_ sender: NSSegmentedControl) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // 1: Create the stack view and add it to our view
        rows = NSStackView()
        rows.orientation = .vertical
        rows.distribution = .fillEqually
        rows.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(rows)
        // 2: Create Auto Layout constraints that pin the stack view to the edges of its container
        rows.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        rows.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        rows.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        rows.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        // 3: Create an initial column that contains a single web view
        let column = NSStackView(views: [makeWebView()])
        column.distribution = .fillEqually
        // 4: Add this column to the `rows` stack view
        rows.addArrangedSubview(column)
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    func makeWebView() -> NSView {
        let webView = WKWebView()
        webView.navigationDelegate = self
        webView.wantsLayer = true
        webView.load(URLRequest(url: URL(string: "https://www.apple.com")!))
        return webView
    }
    
}

