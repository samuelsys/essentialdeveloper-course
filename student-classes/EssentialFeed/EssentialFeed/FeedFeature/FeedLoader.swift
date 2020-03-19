//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Samuel Furtado on 19/03/20.
//  Copyright © 2020 EssentialDeveloper. All rights reserved.
//

import Foundation

enum LoadFeedResult {
    case success(FeedItem)
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
