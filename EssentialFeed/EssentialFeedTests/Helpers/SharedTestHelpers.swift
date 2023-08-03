//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Hsueh Peng Tseng on 2023/7/9.
//

import Foundation

func anyNSError() -> NSError {
	return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
	return URL(string: "http://any-url.com")!
}
