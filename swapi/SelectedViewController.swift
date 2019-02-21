//
//  SelectedViewController.swift
//  swapi
//
//  Created by Alfin Taufiqurrahman on 21/02/19.
//  Copyright © 2019 Alfin Taufiqurrahman. All rights reserved.
//

import UIKit

class SelectedViewController: UIViewController {
    
    @IBOutlet var name: UILabel!
    @IBOutlet var height: UILabel!
    @IBOutlet var mass: UILabel!
    @IBOutlet var hair_color: UILabel!
    @IBOutlet var skin_color: UILabel!
    @IBOutlet var eye_color: UILabel!
    @IBOutlet var birth_year: UILabel!
    @IBOutlet var gender: UILabel!
    @IBOutlet var homeworld: UILabel!
    @IBOutlet var films: UILabel!
    @IBOutlet var species: UILabel!
    @IBOutlet var vehicles: UILabel!
    @IBOutlet var starships: UILabel!
    @IBOutlet var created: UILabel!
    @IBOutlet var edited: UILabel!
    @IBOutlet var url: UILabel!
    
    var selectedData: DataArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = "Name: " + selectedData.name
        height.text = "Height: " + selectedData.height
        mass.text = "Mass: " + selectedData.mass
        hair_color.text = "Hair Color: " + selectedData.hair_color
        skin_color.text = "Skin Color: " + selectedData.skin_color
        eye_color.text = "Eye Color: " + selectedData.eye_color
        birth_year.text = "Birth Year: " + selectedData.birth_year
        gender.text = "Gender: " + selectedData.gender
        homeworld.text = "Homeworld: " + selectedData.homeworld
        films.text = "Films: "
        species.text = "Species: "
        vehicles.text = "Vehicles: "
        starships.text = "Starships: "
        films.isEnabled = false
        species.isEnabled = false
        vehicles.isEnabled = false
        starships.isEnabled = false
        created.text = "Created: " + selectedData.created
        edited.text = "Edited: " + selectedData.edited
        url.text = "URL: " + selectedData.url
        
    }
}
