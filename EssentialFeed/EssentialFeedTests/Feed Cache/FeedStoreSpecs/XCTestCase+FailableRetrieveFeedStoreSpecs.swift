//
//  XCTestCase+FailableRetrieveFeedStoreSpecs.swift
//  EssentialFeedTests
//
//  Created by Hsueh Peng Tseng on 2023/7/10.
//

import XCTest
import EssentialFeed

extension FailableRetrieveFeedStoreSpecs where Self: XCTestCase {
	func assertThatRetrieveDeliversFailureOnRetrievalError(on sut: FeedStore, file: StaticString = #filePath, line: UInt = #line) {
		expect(sut, toRetrieve: .failure(anyNSError()), file: file, line: line)
	}

	func assertThatRetrieveHasNoSideEffectsOnFailure(on sut: FeedStore, file: StaticString = #filePath, line: UInt = #line) {
		expect(sut, toRetrieveTwice: .failure(anyNSError()), file: file, line: line)
	}
}
