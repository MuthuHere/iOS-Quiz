//
//  Questions.swift
//  iOS-Quiz
//
//  Created by Muthukumar on 05/01/2020.
//  Copyright © 2020 Muthu. All rights reserved.
//

import Foundation


struct Questions {
    let questionText:String
    let answer : String
    
    init(q:String,a : String) {
        self.questionText = q
        self.answer = a
    }
}
