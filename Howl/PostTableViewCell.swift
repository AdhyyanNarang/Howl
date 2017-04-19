//
//  PostTableViewCell.swift
//  Howl
//
//  Created by Adhyyan Narang on 4/18/17.
//  Copyright © 2017 Adhyyan Narang. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var postName: UILabel!
    
    @IBOutlet weak var replyButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var chatWithUserButton: UIButton!
    @IBOutlet weak var upvoteLabel: UILabel!
    @IBOutlet weak var downvoteButton: UIButton!
    @IBOutlet weak var upvoteButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
