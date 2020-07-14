//
//  UIButtonExtension.swift
//  Calculator_Alex
//
//  Created by Edgar Alexander on 14/07/2020.
//  Copyright © 2020 Edgar Alexander. All rights reserved.
//

import UIKit

extension UIButton {
    //Borde redondo
    func round() {
    layer.cornerRadius = bounds.height / 2
    clipsToBounds = true
    }
    // Brilla
      func shine() {
          UIView.animate(withDuration: 0.1, animations: {
              self.alpha = 0.5
          }) { (completion) in
              UIView.animate(withDuration: 0.1, animations: {
                  self.alpha = 1
              })
          }
      }
}
