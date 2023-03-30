//
//  CommentsTableViewCell.swift
//  Tech Social Media App
//
//  Created by Paige Stephenson on 3/29/23.
//

import UIKit

class CommentsTableViewCell: UITableViewCell {
    

    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var commentary: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with comment: Comment) {
        
        profilePic.image = UIImage(named: comment.profilePicture)
        userName.text = comment.user
        date.text = comment.date
        commentary.text = comment.bodyText
    }
    
}
