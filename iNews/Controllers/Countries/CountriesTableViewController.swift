//
//  CountriesTableViewController.swift
//  iNews
//
//  Created by Владислав Клепиков on 10.05.2020.
//  Copyright © 2020 Vladislav Klepikov. All rights reserved.
//

import UIKit

class CountriesTableViewController: UITableViewController {
    let countries = Country.getCountries()
    let searchController = UISearchController(searchResultsController: nil)
    
    var filteredCountries = [Country]()
    var isSearchBarEmpty: Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
    var isFiltering: Bool {
        return searchController.isActive && !isSearchBarEmpty
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        settingsTableView()
        settingsSearchController()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return isFiltering ? filteredCountries.count : countries.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath) as! CountryTableViewCell
        let country: Country
        
        if isFiltering {
            country = filteredCountries[indexPath.row]
        } else {
            country = countries[indexPath.row]
        }

        cell.set(country: country)
        
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

// MARK: Settings TableView
extension CountriesTableViewController {
    func settingsTableView() {
        let image = UIImage(named: "World Map")
        let backgroundImage = UIImageView(image: image)

        backgroundImage.alpha = 0.2
        backgroundImage.contentMode = .scaleAspectFill

        tableView.backgroundView = backgroundImage
        tableView.tableFooterView = UIView()
        
        self.title = "Select country:"
    }
}

// MARK: Setting Search Controllers
extension CountriesTableViewController: UISearchResultsUpdating {
    func settingsSearchController() {
        searchController.searchBar.placeholder = "Search country"
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        
        navigationItem.searchController = searchController
        definesPresentationContext = true
    }
    
    func filterContentForSearchText(_ searchText: String, countries: [Country]) {
        filteredCountries = countries.filter({ (country: Country) -> Bool in
            return country.name.lowercased().contains(searchText.lowercased())
        })
        tableView.reloadData()
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        let searchBar = searchController.searchBar
        filterContentForSearchText(searchBar.text!, countries: countries)
    }
}
