//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Hsueh Peng Tseng on 2023/6/24.
//

import Foundation

public enum LoadFeedResult {
	case success([FeedImage])
	case failure(Error)
}

public protocol FeedLoader {
	func load(completion: @escaping (LoadFeedResult) -> Void)
}
