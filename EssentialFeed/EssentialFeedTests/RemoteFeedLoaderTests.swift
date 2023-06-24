//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Hsueh Peng Tseng on 2023/6/24.
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
