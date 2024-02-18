
//  ViewController.swift
//  simpsonBook 
//
//  Created by Dilara Büker on 17.02.2024.

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var mySimpson = [simpson]()
    var chosenSimpson : simpson?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //Simpson Objects
        
        let homer = simpson(simpsonName: "Homer Simpson", simpsonJob: "nuclear safety", simpsonImage: UIImage(named: "homer")!)
        let marge = simpson(simpsonName: "Marge Simpson", simpsonJob: "housewife ", simpsonImage: UIImage(named: "marge")!)
        let bart = simpson(simpsonName: "Bart Simpson", simpsonJob: " student ", simpsonImage: UIImage(named: "bart")!)
        let lisa = simpson(simpsonName: "Lisa Simpson", simpsonJob: "student ", simpsonImage: UIImage(named: "lisa")!)
        let maggie = simpson(simpsonName: "Magie Simpson", simpsonJob: " Baby", simpsonImage: UIImage(named: "maggie")!)
        
        mySimpson.append(homer)
        mySimpson.append(marge)
        mySimpson.append(bart)
        mySimpson.append(lisa)
        mySimpson.append(maggie)
        

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpson[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpson[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = chosenSimpson
        }
    }
}
