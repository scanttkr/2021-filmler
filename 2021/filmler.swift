//
//  filmler.swift
//  2021
//
//  Created by can on 5.07.2022.
//  Copyright © 2022 can. All rights reserved.
//

import Foundation
class Filmler {
    var filmId:Int?
    var filmAd:String?
    var filmResim:String?
    
    init() {
        
    }
    init(filmId:Int,filmAd:String,filmResim:String){
        self.filmId = filmId
        self.filmAd = filmAd
        self.filmResim = filmResim
    }
    
    
}
