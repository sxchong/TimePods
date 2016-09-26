//
//  TimePodTableViewCell.swift
//  TimePods
//
//  Created by Sean Chong on 9/20/16.
//  Copyright © 2016 Sean Chong. All rights reserved.
//

import UIKit

class TimePodTableViewCell: UITableViewCell {

    //MARK: Properties
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelTime: UILabel!
    @IBOutlet weak var labelTimeValue: UILabel!
    
    @IBOutlet weak var buttonStart: UIButton!
    @IBOutlet weak var buttonPause: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
