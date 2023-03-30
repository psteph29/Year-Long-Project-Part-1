//
//  Post Format.swift
//  Tech Social Media App
//
//  Created by Paige Stephenson on 3/28/23.
//

import Foundation
import UIKit


struct Post {
    var user: String
    var date: String
    var picture: String
    var bodyText: String
    var comments: [Comment]
    
    
}

struct Comment {
    var profilePicture: String
    var user: String
    var date: String
    var bodyText: String
}



