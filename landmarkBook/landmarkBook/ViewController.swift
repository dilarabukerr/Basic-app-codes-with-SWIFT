//
//  ViewController.swift
//  landmarkBook
//
//  Created by Dilara Büker on 12.02.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    var secilenLandmark_isim = " "
    var secilenLandmark_resim = UIImage()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return landmarkNames.count //landmark kaç taneyse o kadar döndür.
    }
    
//bu iki fonksiyonu tableview kullanmak istiyorsan kullanmak zorundasın.
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell ()
        var content = cell.defaultContentConfiguration() //içerik ayarlayıcı
        content.text = landmarkNames[indexPath.row] //verilerin sırayla gelmesi için indexPath.row..
        //content.secondaryText = "test"
        cell.contentConfiguration = content
        return cell
    }

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //Landmark Book Data
        
        
        landmarkNames.append("Colosseum")
        landmarkNames.append("Egyptian pyramids")
        landmarkNames.append("Eiffiel")
        landmarkNames.append("Galata")
        landmarkNames.append("Statue of Liberty")
        
   
        landmarkImages.append(UIImage(named: "coliseum.jpeg")!)
        landmarkImages.append(UIImage(named: "egyptian_pyramids.jpeg")!)
        landmarkImages.append(UIImage(named: "eiffiel.jpeg")!)
        landmarkImages.append(UIImage(named: "galata.jpeg")!)
        landmarkImages.append(UIImage(named: "Statue-of-Liberty.jpeg")!)

    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        secilenLandmark_isim = landmarkNames[indexPath.row]
        secilenLandmark_resim = landmarkImages[indexPath.row]
    
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    //diğer ekrana geçtiğinde ne açılacak??
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedLandmarkName = secilenLandmark_isim
            destinationVC.selectedLandmarkImage = secilenLandmark_resim
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            self.landmarkNames.remove(at: indexPath.row)
            self.landmarkImages.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
}
