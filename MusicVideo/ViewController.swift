//
//  ViewController.swift
//  MusicVideo
//
//  Created by Arch Studios on 10/16/16.
//  Copyright © 2016 Arch Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Call API
        let api = APIManager()
        api.loadData(urlString: "http://itunes.apple.com/us/rss/topmusicvideos/limit=10/json", completion: didLoadData)
    }

    func didLoadData(result: String) {
        let alert = UIAlertController(title: (result), message: nil, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { action -> Void in
    
    }
    
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
}
}
