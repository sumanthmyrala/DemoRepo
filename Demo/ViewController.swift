//
//  ViewController.swift
//  Demo
//
//  Created by Sumanth Myrala on 10/12/17.
//  Copyright © 2017 Sumanth Myrala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let demoView = UIView()
        self.view.addSubview(demoView)
        demoView.backgroundColor = UIColor.black
        demoView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addConstraints([
            NSLayoutConstraint(item: demoView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 500),
            NSLayoutConstraint(item: demoView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 100),
            NSLayoutConstraint(item: demoView, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 300),
            ])
        
        self.demoView = demoView
    }
    
    weak var demoView: UIView!
    
    
    override func loadView() {
        super.loadView()
    }
    override func viewWillAppear(_ animated: Bool){
        self.myMethod()

    }
    
    func myMethod() {
        let number: Int = 5
        let cgfloat = CGFloat(number)
        var x = 0;
        var xCordinate = CGFloat(x)
        for i in 0..<number {
            let button : UIButton = UIButton(frame: CGRect(x: xCordinate, y: demoView.frame.minY, width: demoView.frame.width/cgfloat, height: demoView.frame.height))
            demoView.addSubview(button)
            button.backgroundColor = UIColor.red

            xCordinate = xCordinate + button.frame.width
            demoView.bringSubview(toFront: button)
        }
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

