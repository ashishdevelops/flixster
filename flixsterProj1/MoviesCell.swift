//
//  MoviesCell.swift
//  flixsterProj1
//
//  Created by Ashish Patel on 2/5/20.
//  Copyright © 2020 Ashish. All rights reserved.
//

import UIKit

class MoviesCell: UITableViewCell {

    
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var summary: UILabel!
    @IBOutlet weak var title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
