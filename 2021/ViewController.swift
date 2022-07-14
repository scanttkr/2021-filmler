//
//  ViewController.swift
//  2021
//
//  Created by can on 4.07.2022.
//  Copyright © 2022 can. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TableView: UITableView!
    
    var FilmlerListe = [Filmler]()
    var film = ""
    var resim = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        TableView.delegate = self
        TableView.dataSource = self
        
        let f1 = Filmler(filmId: 1, filmAd: "Spider-man: No Way Home", filmResim: "spiderman")
        let f2 = Filmler(filmId: 2, filmAd: "Fast and Furious", filmResim: "f9")
        let f3 = Filmler(filmId: 3, filmAd: "Venom:Let There Be Carnage", filmResim: "venom")
        let f4 = Filmler(filmId: 4, filmAd: "Dune", filmResim: "dune")
        let f5 = Filmler(filmId: 5, filmAd: "Eternals", filmResim: "eternals")
        let f6 = Filmler(filmId: 6, filmAd: "Black Widow", filmResim: "blackwıdow")
        let f7 = Filmler(filmId: 7, filmAd: "The Boss Baby:Family Business", filmResim: "bossbaby")
        let f8 = Filmler(filmId: 8, filmAd: "The Matrix Resurrections", filmResim: "matrix")
        let f9 = Filmler(filmId: 9, filmAd: "Encanto", filmResim: "enkanto")
        let f10 = Filmler(filmId: 10, filmAd: "Luca", filmResim: "luca")
        
        FilmlerListe.append(f1)
        FilmlerListe.append(f2)
        FilmlerListe.append(f3)
        FilmlerListe.append(f4)
        FilmlerListe.append(f5)
        FilmlerListe.append(f6)
        FilmlerListe.append(f7)
        FilmlerListe.append(f8)
        FilmlerListe.append(f9)
        FilmlerListe.append(f10)
        
    }


}
extension ViewController : UITableViewDelegate,UITableViewDataSource,TableViewCellProtocol{
    func cellUzerindekiButton(indexPath: IndexPath) {
        let sFilm = FilmlerListe[indexPath.row]
        film = sFilm.filmAd!
        let sResim = FilmlerListe[indexPath.row]
        resim = sResim.filmResim!
        performSegue(withIdentifier: "toDetailVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.secilenFilm = film
            destinationVC.secilenFilmResmi = resim
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FilmlerListe.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let gelenFilm = FilmlerListe[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "hucre", for: indexPath) as! TableViewCell
        
        cell.FilmLabel.text = gelenFilm.filmAd
        cell.ImageView.image = UIImage(named: gelenFilm.filmResim!)
        
        cell.hucreProtocol = self
        cell.indexPath = indexPath
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let secilenFilm = FilmlerListe[indexPath.row]
        let ad = secilenFilm.filmAd
        print("Film Ad : \(ad!)")
    }
}
