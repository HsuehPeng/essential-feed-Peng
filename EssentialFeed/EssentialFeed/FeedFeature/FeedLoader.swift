//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Hsueh Peng Tseng on 2023/6/24.
//

import Foundation

public protocol FeedLoader {
	typealias Result = Swift.Result<[FeedImage], Error>

	func load(completion: @escaping (Result) -> Void)
}
