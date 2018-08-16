//
//  GameObjectController.swift
//  game
//
//  Created by Eric Lanza on 8/16/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

class GameObjectController {
    
    //MARK: - Shared Instance
    static let shared = GameObjectController()
    
    //MARK: - Properties
    var objects: [GameObject] = []
    
    static let baseURL = URL(string: "https://heads-up-api.herokuapp.com")
    
    //MARK: - GET Request
    static func getAllData(completion: @escaping (Bool) -> Void) {
        
        guard let fullURL = baseURL else { completion(false); return }
        
        URLSession.shared.dataTask(with: fullURL) { (data, _, error) in
            if let error = error {
                print("Error getting game objects: \(error.localizedDescription)")
                completion(false)
                return
            }
            
            guard let data = data else { completion(false); return }
            
            guard let topLevelJSON = try! JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [[String:Any]] else {
                print("JSON Data was not converted into a format we expected")
                completion(false)
                return
            }
            
            var gameObjectsAsStrings: [String] = []
            
            for dictionary in topLevelJSON {
                guard let strings = dictionary["subjects"] as? [String] else { completion(false); continue }
                gameObjectsAsStrings.append(contentsOf: strings)
            }
            
            self.shared.objects = gameObjectsAsStrings.compactMap { GameObject(text: $0) }
            completion(true)
        }.resume()
    }
}
