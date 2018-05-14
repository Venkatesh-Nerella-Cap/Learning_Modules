//
//  ProductTableViewCell.swift
//  AppleProducts
//
//  Created by Venkatesh on 08/05/18.
//  Copyright © 2018 NVG. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet var ProductImageView: UIImageView!
   // @IBOutlet var ProductTitleLabel: UILabel!
    //@IBOutlet var ProductDescriptionLabel: UILabel!
    @IBOutlet var ProductTitleLabel: UILabel!
    @IBOutlet var ProductDescriptionLabel: UILabel!
    
    
    //Mark- Data Model
    
    var product : Product?{
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI(){
        ProductImageView?.image = product?.image
        ProductTitleLabel?.text = product?.title
        ProductDescriptionLabel?.text = product?.description
    }

}
