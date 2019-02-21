//
//  ViewController.swift
//  swapi
//
//  Created by Alfin Taufiqurrahman on 20/02/19.
//  Copyright © 2019 Alfin Taufiqurrahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var tableLength = 0
    private var dataArrays = [DataArray]()
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = "https://swapi.co/api/people/"
        guard let urlObj = URL(string: url) else { return }

        URLSession.shared.dataTask(with: urlObj) { (data, response, err) in

            guard let data = data else { return }

            do{
                let swapee = try JSONDecoder().decode(Results.self, from: data)
                self.dataArrays = swapee.results
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
            }catch let jsonErr {
                print("error", jsonErr)
            }

        }.resume()
        
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArrays.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DataCell") as? TableViewCell else { return UITableViewCell() }
        
            cell.labelNama.text = dataArrays[indexPath.row].name
        
        return cell
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("perform")
        performSegue(withIdentifier: "selected", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare")
        if let destination = segue.destination as? SelectedViewController {
            destination.selectedData = dataArrays[(tableView.indexPathForSelectedRow?.row)!]
            tableView.deselectRow(at: tableView.indexPathForSelectedRow!, animated: true)
            
        }
    }
}


