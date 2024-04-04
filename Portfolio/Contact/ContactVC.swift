//
//  ContactVC.swift
//  Portfolio
//
//  Created by Mag isb-10 on 04/04/2024.
//

import UIKit

class ContactVC: UIViewController {

  @IBOutlet weak var linkedinBtn: UIButton!
  @IBOutlet weak var githubBtn: UIButton!
  @IBOutlet weak var gmailBtn: UIButton!
  @IBOutlet weak var whatsappBtn: UIButton!
  
  override func viewDidLoad() {
        super.viewDidLoad()

    gmailBtn.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    githubBtn.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    linkedinBtn.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    whatsappBtn.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    }
  
  @objc func buttonClicked(sender: UIButton) {
    var urlString: String?
    
    switch sender.tag {
    case 1:
      urlString = "mailto:muzammilraj0001@gmail.com"
    case 2:
      urlString = "https://github.com/muzammil-raaj-raxa-ios"
    case 3:
      urlString = "https://www.linkedin.com/in/muzammilraza0001/"
    case 4:
      urlString = "https://api.whatsapp.com/send?phone=923145518318&text=Hello"
    default:
      break
    }
    
    if let urlString = urlString, let url = URL(string: urlString) {
      UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
  }

}

//https://api.whatsapp.com/send?phone=923145518318&text=Hello
