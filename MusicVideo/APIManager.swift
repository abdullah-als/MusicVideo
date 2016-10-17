//
//  APIManager.swift
//  MusicVideo
//
//  Created by Arch Studios on 10/16/16.
//  Copyright © 2016 Arch Studios. All rights reserved.
//

import Foundation

class APIManager {
    func loadData(urlString: String, completion: @escaping ((result: String)) -> Void) {
        let session = URLSession.shared
        let url = NSURL(string: urlString)!
        
        let task = session.dataTask(with: url as URL) {
            (data, response, error) -> Void in
            DispatchQueue.main.async() {
                if error != nil {
                    completion((result: error!.localizedDescription))
                } else {
                    completion((result: "NSURLSession successful"))
                    print(data)
                }
            }
        }
        
        task.resume()
        
    }
}
