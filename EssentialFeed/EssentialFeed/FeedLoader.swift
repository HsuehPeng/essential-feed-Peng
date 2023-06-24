//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Hsueh Peng Tseng on 2023/6/24.
//

import Foundation

enum LoadFeedResult {
	case success([FeedItem])
	case error(Error)
}

protocol FeedLoader {
	func load(completion: @escaping (LoadFeedResult) -> Void)
}
