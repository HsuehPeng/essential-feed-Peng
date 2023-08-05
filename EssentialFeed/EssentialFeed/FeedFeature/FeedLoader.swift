//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Hsueh Peng Tseng on 2023/6/24.
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
	func load(completion: @escaping (LoadFeedResult) -> Void)
}
