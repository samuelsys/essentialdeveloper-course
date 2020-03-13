//
//  RemoteWithLocalFallbackFeedLoader.swift
//  planning-class-02
//
//  Created by Samuel Furtado on 13/03/20.
//  Copyright © 2020 EssentialDeveloper. All rights reserved.
//

import Foundation

struct Reachability {
    static let networkAvailable = false
}

class RemoteWithLocalFallbackFeedLoader: FeedLoader {
    
    let remote: RemoteFeedLoader
    let local: LocalFeedLoader
    
    init (remote: RemoteFeedLoader, local: LocalFeedLoader) {
        self.remote = remote
        self.local = local
    }
    
    func loadFeed(completion: @escaping ([String]) -> Void) {
        let load = Reachability.networkAvailable ? remote.loadFeed : local.loadFeed
        load(completion)
    }
}
