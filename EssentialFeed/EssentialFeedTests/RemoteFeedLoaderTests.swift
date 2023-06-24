//
//  RemoteFeedLoaderTests.swift
//  EssentialFeedTests
//
//  Created by Hsueh Peng Tseng on 2023/6/24.
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
		client.get(from: URL(string: "https://a-url.com")!)
	}
}

protocol HTTPClient {
	func get(from url: URL)
}

class HTTPClientSpy: HTTPClient {
	func get(from url: URL) {
		requestedURL = url
	}

	var requestedURL: URL?
}

class RemoteFeedLoaderTests: XCTestCase {
	
	func test_init_doesNotRequestDataFromURL() {
		let url = URL(string: "https://a-url.com")!
		let client = HTTPClientSpy()

		_ = RemoteFeedLoader(url: url, client: client)

		XCTAssertNil(client.requestedURL)
	}
	
	func test_load_requestDataFromURL() {
		let url = URL(string: "https://a-url.com")!
		let client = HTTPClientSpy()
		let sut = RemoteFeedLoader(url: url, client: client)

		sut.load()

		XCTAssertEqual(url, client.requestedURL)
	}

}
