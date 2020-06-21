//
//  Animation.swift
//  HW_2.9_App
//
//  Created by Алексей Подлевский on 21.06.2020.
//  Copyright © 2020 Independent Developer. All rights reserved.
//

struct Animation {
  let preset: String
  let curve: String
  let force: Float
  let duration: Float
  let delay: Float
  
  init() {
    preset = "slideLeft"
    curve = "easeIn"
    force = 0.5
    duration = 0.5
    delay = 0.5
  }
  
  init(preset: String,
       curve: String,
       force: Float,
       duration: Float,
       delay: Float) {
    self.preset = preset
    self.curve = curve
    self.force = force
    self.duration = duration
    self.delay = delay
  }
  
  let presets = ["slideLeft",
                 "slideRight",
                 "slideDown",
                 "slideUp",
                 "slideUp",
                 "squeezeLeft",
                 "squeezeRight",
                 "squeezeDown",
                 "squeezeUp",
                 "fadeIn",
                 "fadeOut",
                 "fadeOutIn",
                 "fadeInLeft",
                 "fadeInRight",
                 "fadeInDown",
                 "fadeInUp",
                 "zoomIn",
                 "zoomOut",
                 "fall",
                 "shake",
                 "pop",
                 "flipX",
                 "flipY",
                 "morph",
                 "squeeze",
                 "flash",
                 "wobble",
                 "swing"]
  
  let curves = ["easeIn",
                "easeOut",
                "easeInOut",
                "linear",
                "spring",
                "easeInSine",
                "easeOutSine",
                "easeInOutSine",
                "easeInQuad",
                "easeOutQuad",
                "easeInOutQuad",
                "easeInCubic",
                "easeOutCubic",
                "easeInOutCubic",
                "easeInQuart",
                "easeOutQuart",
                "easeInOutQuart",
                "easeInQuint",
                "easeOutQuint",
                "easeInOutQuint",
                "easeInExpo",
                "easeOutExpo",
                "easeInOutExpo",
                "easeInCirc",
                "easeOutCirc",
                "easeInOutCirc",
                "easeInBack",
                "easeOutBack",
                "easeInOutBack"]
  
  func newAnimation() -> Animation {
    let preset = self.presets.randomElement() ?? "slideLeft"
    let curve = self.curves.randomElement() ?? "easeIn"
    let force = Float.random(in: 0.5...10.0)
    let duration = Float.random(in: 0.5...2.0)
    let delay = Float.random(in: 0.0...1.0)
    
    let animation = Animation(preset: preset, curve: curve, force: force, duration: duration, delay: delay)
    
    return animation
  }
}
