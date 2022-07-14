//
//  DetailsViewController.swift
//  2021
//
//  Created by can on 13.07.2022.
//  Copyright © 2022 can. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var resim: UIImageView!
    @IBOutlet weak var adLabel: UILabel!
    
    var secilenFilm = ""
    var secilenFilmResmi = ""
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        adLabel.text = secilenFilm
        resim.image = UIImage(named: secilenFilmResmi)
    }
    
}
