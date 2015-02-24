//
//  DetailViewController.swift
//  MyFavFoods
//
//  Created by mhevey on 2/20/15.
//  Copyright (c) 2015 Rock Valley College. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    //@IBOutlet weak var detailDescriptionLabel: UILabel!
    
    @IBOutlet weak var productImageView: UIImageView!

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            //self.configureView()
        }
    }

    
    var productName: NSString? {
        didSet {
            
        }
    }
    
    var productURL: NSString? {
        didSet {
            // Update the view.
            // self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: AnyObject = self.detailItem {
//            if let label = self.detailDescriptionLabel {
//                label.text = detail.description
//            }
            productImageView.image = UIImage(named:productURL!)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        println("Product URL: \(productURL)")
        println("Product Name: \(productName)")
        if productName == nil
        {
            productImageView.image = UIImage(named:"Main.png")
        }
        title = productName
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

