//
//  SkillCell.swift
//  Portfolio
//
//  Created by Mag isb-10 on 04/04/2024.
//

import UIKit

class SkillCell: UITableViewCell {

  @IBOutlet weak var skillLabel: UILabel!
  @IBOutlet weak var skillImage: UIImageView!
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
