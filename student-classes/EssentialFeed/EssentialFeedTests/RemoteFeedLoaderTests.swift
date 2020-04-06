//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Samuel Furtado on 06/04/20.
//  Copyright © 2020 EssentialDeveloper. All rights reserved.
//

import XCTest

class RemoteFeedLoader {
    
    let client: HTTPClient
    let url: URL
    
    init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }
    
    func load() {
        client.get(from: url)
    }
}

protocol HTTPClient {
    func get(from url: URL)
}

class HTTPClientSpy: HTTPClient {
    var requestedURL: URL?
    
    func get(from url: URL) {
        requestedURL = url
    }
}

class RemoteFeedLoaderTests: XCTestCase {
    
    func test_init_doesNotRequestDataFromURL() {
        let (client, _) = makeSUT(url: URL(string: "http://url.com")!)
        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_requestDataFromURL() {
        let (client, sut) = makeSUT(url: URL(string: "http://url.com")!)
        
        sut.load()
        
        XCTAssertNotNil(client.requestedURL)
    }
    
    //Helpers
    
    func makeSUT(url: URL = URL(string: "http://url.com")!) -> (HTTPClientSpy, RemoteFeedLoader) {
        let client = HTTPClientSpy()
        let sut = RemoteFeedLoader(url: url, client: client)
        return (client, sut)
    }
}
