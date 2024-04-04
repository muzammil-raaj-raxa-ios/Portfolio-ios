//
//  ViewController.swift
//  Portfolio
//
//  Created by Mag isb-10 on 02/04/2024.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var sloganLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    letterByletterAnimation()
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
      let storyboard = UIStoryboard(name: "TabbarVC", bundle: .main)
      if let vc = storyboard.instantiateViewController(withIdentifier: "TabbarVC") as? TabbarVC {
        self.navigationController?.pushViewController(vc, animated: true)
      }
    }
  }

  func letterByletterAnimation() {
    sloganLabel.text = ""
    var charIndex = 0.0
    let sloganText = "Design Dreams, Shape Themes"
    
    for letter in sloganText {
      Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in
        self.sloganLabel.text?.append(letter)
      }
      charIndex += 1
    }
  }

}

