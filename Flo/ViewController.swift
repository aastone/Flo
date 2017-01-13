//
//  ViewController.swift
//  Flo
//
//  Created by Wang, Yipu on 1/12/17.
//  Copyright © 2017 stone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var graphView: GraphView!
    @IBOutlet weak var counterView: CounterView!
    @IBOutlet weak var counterLabel: UILabel!
    
    var isGraphViewShowing = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        counterLabel.text = String(counterView.counter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addButtonPressed(_ sender: Any) {
        counterView.counter += 1
        counterLabel.text = String(counterView.counter)
        if isGraphViewShowing {
//            counterViewTap(nil)
        }
    }

    @IBAction func decreaseButtonPressed(_ sender: Any) {
        counterView.counter -= 1
        counterLabel.text = String(counterView.counter)
        if isGraphViewShowing {
//            counterViewTap(nil)
        }
    }

    @IBAction func counterViewTap(_ sender: UITapGestureRecognizer) {
        if isGraphViewShowing {
//            UIView.transition(from: graphView,
//                              to: counterView,
//                              duration: 1.0,
//                              options: UIViewAnimationOptions.transitionFlipFromLeft | UIViewAnimationOptions.showHideTransitionViews,
//                              completion: nil)
        } else {
//            UIView.transition(from: counterView,
//                              to: graphView,
//                              duration: 1.0,
//                              options: UIViewAnimationOptions.transitionFlipFromRight | UIViewAnimationOptions.showHideTransitionViews,
//                              completion: nil)
        }
        isGraphViewShowing = !isGraphViewShowing
    }
}

