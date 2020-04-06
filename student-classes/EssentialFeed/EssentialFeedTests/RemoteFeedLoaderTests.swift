//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Samuel Furtado on 06/04/20.
//  Copyright © 2020 EssentialDeveloper. All rights reserved.
//

import XCTest

class RemoteFeedLoader {
    
}

class HTTPClient {
    var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
        _ = RemoteFeedLoader()
        
        XCTAssertNil(client.requestedURL)
        
    }
}
