//
//  FeedStore.swift
//  EssentialFeed
//
//  Created by Hsueh Peng Tseng on 2023/7/7.
//

import Foundation

public protocol FeedStore {
	typealias DeletionCompletion = (Error?) -> Void
	typealias InsertionCompletion = (Error?) -> Void

	func deleteCachedFeed(completion: @escaping DeletionCompletion)
	func insert(_ items: [LocalFeedItem], timestamp: Date, completion: @escaping InsertionCompletion)
}
