//
//  CoreDataFeedStore.swift
//  EssentialFeed
//
//  Created by Hsueh Peng Tseng on 2023/8/3.
//

import Foundation

public final class CoreDataFeedStore: FeedStore {
	public init() {}

	public func retrieve(completion: @escaping RetrievalCompletion) {
		completion(.empty)
	}

	public func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion) {

	}

	public func deleteCachedFeed(completion: @escaping DeletionCompletion) {

	}

}
