//
//  Singleton.swift
//  planning-class-01
//
//  Created by Samuel Furtado on 25/02/20.
//  Copyright © 2020 LetsBuild. All rights reserved.
//

import UIKit

struct UserLogger {}


//Singleton
class ApiClient {
        
    static let shared = ApiClient()
    
    private init() {}
    
    func execute(_ : URLRequest, completion: @escaping (Data) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(100)) {
           // completion(userLogged)
        }
    }
}

//Main Module

extension ApiClient {
    func login(completion: (LoggedUser) -> Void) {}
}

extension ApiClient {
    func loadFeed(completion: ([FeedItem]) -> Void) {}
}

//Login Module

struct LoggedUser {}

class LoginViewController: UIViewController {
    
    var login: (((LoggedUser) -> Void) -> Void)?
    
    func didTapLoginButton() {
        login? { user in
            
        }
    }
}

//Feed Module

struct FeedItem {}

class FeedService {
    var loadFeed: ((([FeedItem]) -> Void) -> Void)?
    
    func load() {
        loadFeed? { loadedItens in
            
        }
    }
}

