//
//  CountryTableViewCell.swift
//  iNews
//
//  Created by Владислав Клепиков on 10.05.2020.
//  Copyright © 2020 Vladislav Klepikov. All rights reserved.
//

import UIKit

class CountryTableViewCell: UITableViewCell {
    @IBOutlet weak var countryFlag: UIImageView!
    @IBOutlet weak var countryName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func set(country: Country) {
        self.countryName.text = country.name
        self.countryFlag.image = UIImage(named: country.flag)
    }

}
