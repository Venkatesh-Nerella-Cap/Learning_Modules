//
//  ProductDetailTableViewController.swift
//  AppleProducts
//
//  Created by Venkatesh on 11/05/18.
//  Copyright © 2018 NVG. All rights reserved.
//

import UIKit

class ProductDetailTableViewController: UITableViewController {

    @IBOutlet var PproductImageView: UIImageView!
    @IBOutlet var productTitleTextField: UITextField!
    
    @IBOutlet var productDescriptionTextView: UITextView!
    
    var product: Product? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Edit Product"
        PproductImageView.image = product?.image
        productTitleTextField.text = product?.title
    productTitleTextField.delegate = self
        productDescriptionTextView.text = product?.description
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        if indexPath.section == 0 && indexPath.row == 0{
            return indexPath
        }
        else{
            return nil
        }
    }
    
}
extension ProductDetailTableViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension ProductDetailTableViewController{
    override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        productDescriptionTextView.resignFirstResponder()
        productTitleTextField.resignFirstResponder()
    }
}
