//
//  ScrollViewVC.swift
//  testing
//
//  Created by Frank Rodgers on 8/23/15.
//  Copyright (c) 2015 Frank Rodgers. All rights reserved.
//

import UIKit

class ScrollViewVC: UIViewController {

    @IBOutlet weak var mainScrollView: UIScrollView!
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var contentViewTitle: UILabel!
    @IBOutlet weak var contentViewPrice: UILabel!
    @IBOutlet weak var contentViewImageContainer: UIScrollView!
    
    @IBOutlet var imageContainer: UIView!
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    @IBOutlet weak var imageThree: UIImageView!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        //set the tab bar item's title
    }
    convenience init() {
        self.init(nibName: "ScrollViewVC", bundle: nil)
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        self.mainScrollView.addSubview(contentView)
        self.mainScrollView.contentSize = self.contentView.frame.size
        self.contentViewImageContainer.addSubview(self.imageContainer)
        self.contentViewImageContainer.contentSize = self.imageContainer.frame.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
