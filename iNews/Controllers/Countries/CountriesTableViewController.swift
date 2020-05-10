//
//  CountriesTableViewController.swift
//  iNews
//
//  Created by Владислав Клепиков on 10.05.2020.
//  Copyright © 2020 Vladislav Klepikov. All rights reserved.
//

import UIKit

class CountriesTableViewController: UITableViewController {
    let countris = [
        Country(id: 0, code: "ar", name: "Argentina", flag: "ar"),
        Country(id: 1, code: "au", name: "Australia", flag: "au"),
        Country(id: 2, code: "at", name: "Austria", flag: "at"),
        Country(id: 3, code: "be", name: "Belgium", flag: "be"),
        Country(id: 4, code: "br", name: "Brazil", flag: "br"),
        Country(id: 5, code: "bg", name: "Bulgaria", flag: "bg"),
        Country(id: 6, code: "ca", name: "Canada", flag: "ca"),
        Country(id: 7, code: "cn", name: "China", flag: "cn"),
        Country(id: 8, code: "co", name: "Colombia", flag: "co"),
        Country(id: 9, code: "cu", name: "Cuba", flag: "cu"),
        Country(id: 10, code: "cz", name: "Czech Republic", flag: "cz"),
        Country(id: 11, code: "eg", name: "Egypt", flag: "eg"),
        Country(id: 12, code: "fr", name: "France", flag: "fr"),
        Country(id: 13, code: "de", name: "Germany", flag: "de"),
        Country(id: 14, code: "gr", name: "Greece", flag: "gr"),
        Country(id: 15, code: "hk", name: "Hong Kong", flag: "hk"),
        Country(id: 16, code: "hu", name: "Hungary", flag: "hu"),
        Country(id: 17, code: "in", name: "India", flag: "in"),
        Country(id: 18, code: "id", name: "Indonesia", flag: "id"),
        Country(id: 19, code: "ie", name: "Ireland", flag: "ie"),
        Country(id: 20, code: "il", name: "Israel", flag: "il"),
        Country(id: 21, code: "it", name: "Italy", flag: "it"),
        Country(id: 22, code: "jp", name: "Japan", flag: "jp"),
        Country(id: 23, code: "lv", name: "Latvia", flag: "lv"),
        Country(id: 24, code: "lt", name: "Lithuania", flag: "lt"),
        Country(id: 25, code: "my", name: "Malaysia", flag: "my"),
        Country(id: 26, code: "mx", name: "Mexico", flag: "mx"),
        Country(id: 27, code: "ma", name: "Morocco", flag: "ma"),
        Country(id: 28, code: "nl", name: "Netherlands", flag: "nl"),
        Country(id: 29, code: "nz", name: "New Zealand", flag: "nz"),
        Country(id: 30, code: "ng", name: "Nigeria", flag: "ng"),
        Country(id: 31, code: "no", name: "Norway", flag: "no"),
        Country(id: 32, code: "ph", name: "Philippines", flag: "ph"),
        Country(id: 33, code: "pl", name: "Poland", flag: "pl"),
        Country(id: 34, code: "pt", name: "Portugal", flag: "pt"),
        Country(id: 35, code: "ro", name: "Romania", flag: "ro"),
        Country(id: 36, code: "ru", name: "Russia", flag: "ru"),
        Country(id: 37, code: "sa", name: "Saudi Arabia", flag: "sa"),
        Country(id: 38, code: "rs", name: "Serbia", flag: "rs"),
        Country(id: 39, code: "sg", name: "Singapore", flag: "sg"),
        Country(id: 40, code: "sk", name: "Slovakia", flag: "sk"),
        Country(id: 41, code: "si", name: "Slovenia", flag: "si"),
        Country(id: 42, code: "za", name: "South Africa", flag: "za"),
        Country(id: 43, code: "kr", name: "South Korea", flag: "kr"),
        Country(id: 44, code: "se", name: "Sweden", flag: "se"),
        Country(id: 45, code: "ch", name: "Switzerland", flag: "ch"),
        Country(id: 46, code: "tw", name: "Taiwan", flag: "tw"),
        Country(id: 47, code: "th", name: "Thailand", flag: "th"),
        Country(id: 48, code: "tr", name: "Turkey", flag: "tr"),
        Country(id: 49, code: "ae", name: "UAE", flag: "ae"),
        Country(id: 50, code: "ua", name: "Ukraine", flag: "ua"),
        Country(id: 51, code: "gb", name: "United Kingdom", flag: "gb"),
        Country(id: 52, code: "us", name: "United States", flag: "us"),
        Country(id: 53, code: "ve", name: "Venuzuela", flag: "ve"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        tableView.tableFooterView = UIView()
        self.title = "Select country:"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return countris.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath) as! CountryTableViewCell
        let country = countris[indexPath.row]

        cell.countryName.text = country.name
        cell.countryFlag.image = UIImage(named: country.flag)
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

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

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
