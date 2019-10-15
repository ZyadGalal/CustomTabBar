//
//  ViewController.swift
//  CustomTabBar
//
//  Created by macOS on 10/15/19.
//  Copyright © 2019 macOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func CircleButtonClicked(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "CircleViewController")
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func RectButtonClicked(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "RectViewController")
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func curveButtonClicked(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "TabViewController")
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
}
