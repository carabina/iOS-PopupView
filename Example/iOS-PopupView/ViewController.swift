//
//  ViewController.swift
//  iOS-PopupView
//
//  Created by iAmSnow on 09/29/2017.
//  Copyright (c) 2017 iAmSnow. All rights reserved.
//

import UIKit
import iOS_PopupView
class ViewController: UIViewController {

    let x = PopupView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let containerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        let itemView: UIView = UIView(frame: CGRect(x: 10, y: 10, width: containerView.bounds.width - 10, height: containerView.bounds.height / 2))
        itemView.backgroundColor = .red
        containerView.addSubview(itemView)
        x.show(view: containerView, backgroundColor: UIColor.black.withAlphaComponent(0.2), Animation: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

