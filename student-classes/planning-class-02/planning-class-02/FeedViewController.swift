//
//  ViewController.swift
//  planning-class-02
//
//  Created by Samuel Furtado on 13/03/20.
//  Copyright © 2020 EssentialDeveloper. All rights reserved.
//

import UIKit

protocol FeedLoader {
    func loadFeed(completion: @escaping ([String]) -> Void)
}

class FeedViewController: UIViewController {
    
    var loader: FeedLoader!
    
    convenience init(loader: FeedLoader) {
        self.init()
        self.loader = loader
    }

    override func viewDidLoad() {
        super.viewDidLoad()
       
        loader.loadFeed { (loadedItems) in
            //update UI
        }
    }
}

