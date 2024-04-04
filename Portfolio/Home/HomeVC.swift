//
//  HomeVC.swift
//  Portfolio
//
//  Created by Mag isb-10 on 02/04/2024.
//

import UIKit

class HomeVC: UIViewController {

  @IBOutlet weak var raajImage: UIImageView!
  @IBOutlet weak var skillsTV: UITableView!
  
  var skills: [Skill] = [
    Skill(image: UIImage(named: "swift")!, labelText: "Swift Programming"),
    Skill(image: UIImage(named: "xcode")!, labelText: "Xcode"),
    Skill(image: UIImage(named: "appstore")!, labelText: "Appstore"),
    Skill(image: UIImage(named: "firebase")!, labelText: "Firebase"),
    Skill(image: UIImage(named: "git")!, labelText: "Version Control (Git)"),
    Skill(image: UIImage(named: "design")!, labelText: "UI/UX Design"),
    Skill(image: UIImage(named: "autolayout")!, labelText: "Auto Layout"),
    Skill(image: UIImage(named: "dependency")!, labelText: "CocoaPods / SPM"),
    Skill(image: UIImage(named: "design")!, labelText: "MVC / MVVM Design Patterns"),
    Skill(image: UIImage(named: "debug")!, labelText: "Debugging and Testing"),
    
  ]
  
  override func viewDidLoad() {
        super.viewDidLoad()

    raajImage.layer.cornerRadius = raajImage.frame.size.width / 2
    raajImage.clipsToBounds = true
    
    skillsTV.dataSource = self
    skillsTV.delegate = self
    skillsTV.register(UINib(nibName: "SkillCell", bundle: .main), forCellReuseIdentifier: "SkillCell")
    }

}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return skills.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "SkillCell", for: indexPath) as? SkillCell else
    {return UITableViewCell()}
    
    cell.skillImage.image = skills[indexPath.row].image
    cell.skillLabel.text = skills[indexPath.row].labelText
    
    return cell
  }
  
  
}
