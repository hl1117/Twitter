//
//  TweetCell.swift
//  twitter_alamofire_demo
//
//  Created by Charles Hieger on 6/18/17.
//  Copyright © 2017 Charles Hieger. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tweetTime: UILabel!
    @IBOutlet weak var tweetLabel: UILabel!
    @IBOutlet weak var replyLabel: UIImageView!
    @IBOutlet weak var retweetLabel: UIImageView!
    @IBOutlet weak var favoriteLabel: UIImageView!
    
    
    
    var tweet: Tweet! {
        didSet{
            tweetTextLabel.text = tweet.text
            nlabel.text = (tweet.user?.name)!
            ttime.text = tweet.timeStamp
            unamelabel.text = tweet.user?.screenName
            profileImageView.setImageWith((tweet.user?.profileURL)! as URL)
        }
    }
  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
