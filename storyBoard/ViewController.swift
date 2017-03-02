//
//  ViewController.swift
//  storyBoard
//
//  Created by tom.zhu on 16/8/10.
//  Copyright © 2016年 tom.zhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func back(segue: UIStoryboardSegue) {
        NSLog("back")
    }
    
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
        self.definesPresentationContext = true
        let vc = segue.destination
        vc.view.backgroundColor = UIColor.red.withAlphaComponent(0.2)
        vc.modalPresentationStyle = .overCurrentContext
    }
    
}

