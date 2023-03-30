//
//  PostsTableViewController.swift
//  Tech Social Media App
//
//  Created by Paige Stephenson on 3/28/23.
//

import UIKit

class PostsTableViewController: UITableViewController {

    var posts: [Post] = [
        Post(user: "HiroHam", date: "March 20, 2023", picture: "Big Hug", bodyText: "My Best Friend 🤍", comments: [Comment(profilePicture: "Gogo", user: "gogoTomato", date: "March 20, 2023", bodyText: "#offended"), Comment(profilePicture: "Gogo", user: "gogoTomato", date: "March 20, 2023", bodyText: "I thought we were best friends #wayoffended"), Comment(profilePicture: "Circle Photo", user: "HiroHam", date: "March 21, 2023", bodyText: "GoGo you know you're always my number one human friend 😏")]),
        Post(user: "HiroHam", date: "September 23, 2020", picture: "Baymax and cat", bodyText: "Baymax appreciation post", comments: [Comment(profilePicture: "Logo", user: "heroSquad17", date: "September 23, 2030", bodyText: "Our team wouldn't be the same without Baymax"), Comment(profilePicture: "Honey Lemon", user: "HoneyLemon", date: "September 23, 2020", bodyText: "Him and the kitty cat 🥹🥹🥹")]),
        Post(user: "HiroHam", date: "July 29, 2021", picture: "none", bodyText: "Been missing Tadashi a lot lately...", comments: [Comment(profilePicture: "Aunt Cass", user: "Cass001", date: "July 19, 2021", bodyText: "Me too Hiro. Love you ♥️")]),
        Post(user: "HiroHam", date: "June 3, 2020", picture: "none", bodyText: "Thank you for all the birthday wishes! It was a good one.", comments: [Comment(profilePicture: "Ali", user: "sportySport27", date: "June 5, 2020", bodyText: "Yoooo Hiro! Happy birthday a couple days late!")]),
        Post(user: "HiroHam", date: "April 8, 2020", picture: "gang", bodyText: "SUPERHERO SQUAD!", comments: [Comment(profilePicture: "Logo", user: "heroSquad17", date: "April 8, 2020", bodyText: "We're the coolest"), Comment(profilePicture: "Gogo", user: "gogoTomato", date: "April 8, 2020", bodyText: "😎😎😎"), Comment(profilePicture: "Ali", user: "sportySport27", date: "April 9, 2020", bodyText: "Call me if you ever need a substitute for a mission")]),
        Post(user: "HiroHam", date: "June 14, 2019", picture: "Bowing", bodyText: "namaste 🙏🏼", comments: [Comment(profilePicture: "Wasabi", user: "wassupWasabi", date: "June 14, 2019", bodyText: "you're straight chillinnnnn"), Comment(profilePicture: "Honey Lemon", user: "HoneyLemon", date: "June 14, 2019", bodyText: "I taught him how to bow like that! I'm so proud 🥲")]),
        Post(user: "HiroHam", date: "February 8, 2018", picture: "superheros", bodyText: "We're pretty cool...", comments: [Comment(profilePicture: "Logo", user: "heroSquad17", date: "February 8, 2018", bodyText: "The coolest members of the squad"), Comment(profilePicture: "Wasabi", user: "wassupWasabi", date: "February 8, 2016", bodyText: "🤟🏾🤟🏾🤟🏾🤟🏾🤟🏾")]),
        Post(user: "HiroHam", date: "January 29, 2018", picture: "Brothers", bodyText: "Happy Birthday to my best friend! Love you Tadashi 😜", comments: [Comment(profilePicture: "Tadashi", user: "tadashhh", date: "January 29, 2018", bodyText: "Thanks little brother 🧡"), Comment(profilePicture: "Sofia", user: "coolKat27", date: "January 29, 2018", bodyText: "HAPPY BIRTHDAY🥳")]),
        Post(user: "HiroHam", date: "November 18, 2017", picture: "Put on armor", bodyText: "Big old marshmallow", comments: [Comment(profilePicture: "Fred", user: "comicFred", date: "November 18, 2017", bodyText: "Looks tasty"), Comment(profilePicture: "Fred", user: "comicFred", date: "November 18, 2017", bodyText: "Just kidding... I would never eat you Baymax"), Comment(profilePicture: "Gogo", user: "gogoTomato", date: "November 20, 2017", bodyText: "@comicFred Now I want smores!😩")]),
        Post(user: "HiroHam", date: "February 8, 2016", picture: "none", bodyText: "LIFE UPDATE!! I'm going to the San Fransokyo Institute of Technology!!", comments: [Comment(profilePicture: "Tadashi", user: "tadashhh", date: "February 8, 2016", bodyText: "Yessssssssss!"), Comment(profilePicture: "Tadashi", user: "tadashhh", date: "February 8, 2016", bodyText: "This year is gonna be lit!"), Comment(profilePicture: "Honey Lemon", user: "HoneyLemon", date: "February 8, 2016", bodyText: "Yayyyyyyy! This is so exciting!!😃 ")])
            ]

    
//     array of posts, each section is a post

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return posts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return posts[section].comments.count + 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

        let post = posts[indexPath.section]
        
        if indexPath.row == 0 {
            let postCell = tableView.dequeueReusableCell(withIdentifier: "socialMediaPostCell", for: indexPath) as! SocialMediaPostsTableViewCell
            
            postCell.update(with: post)
            postCell.showsReorderControl = true
            return postCell
        } else {
            let commentCell = tableView.dequeueReusableCell(withIdentifier: "commentsCell", for: indexPath) as! CommentsTableViewCell
            let comment = post.comments[indexPath.row - 1]
            commentCell.update(with: comment)
            commentCell.showsReorderControl = true
            return commentCell
        }
    }
    

    
    
    
    

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */
}



