//
//  ViewController.swift
//  HW_2.9_App
//
//  Created by Алексей Подлевский on 18.06.2020.
//  Copyright © 2020 Independent Developer. All rights reserved.
//

import Spring

class ViewController: UIViewController {
  
  var animation = Animation().newAnimation()
  
  @IBOutlet weak var springAnimationView: SpringView!
  @IBOutlet weak var animationLabel: UILabel!
  @IBOutlet weak var curveLabel: UILabel!
  @IBOutlet weak var forceLabel: UILabel!
  @IBOutlet weak var durationLabel: UILabel!
  @IBOutlet weak var delayLabel: UILabel!
  @IBOutlet weak var runButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    runButton.setTitle("Run Animation: \(animation.preset)", for: .normal)
  }

  @IBAction func runSpringAnimation(_ sender: UIButton) {
    springAnimationView.animation = animation.preset
    springAnimationView.curve = animation.curve
    springAnimationView.force = CGFloat(animation.force)
    springAnimationView.duration = CGFloat(animation.duration)
    springAnimationView.delay = CGFloat(animation.delay)
    springAnimationView.animate()
    
    animationLabel.text = "Animation: \(animation.preset)"
    curveLabel.text = "Curve: \(animation.curve)"
    forceLabel.text = "Force: \(animation.force)"
    durationLabel.text = "Duration: \(animation.duration)"
    delayLabel.text = "Delay: \(animation.delay)"
    
    animation = Animation().newAnimation()
    
    sender.setTitle("Run Animation: \(animation.preset)", for: .normal)
  }
  
}

