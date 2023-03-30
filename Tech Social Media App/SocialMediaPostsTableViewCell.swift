//
//  SocialMediaPostsTableViewCell.swift
//  Tech Social Media App
//
//  Created by Paige Stephenson on 3/28/23.
//

import UIKit

class SocialMediaPostsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var postContents: UILabel!
    @IBOutlet weak var pictureContents: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with post: Post) {
        
        userNameLabel.text = post.user
        dateLabel.text = post.date
        postContents.text = post.bodyText
        pictureContents.image = UIImage(named: post.picture)
    }

}








