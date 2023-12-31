//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Hsueh Peng Tseng on 2023/8/10.
//

import Foundation

public protocol FeedImageDataLoaderTask {
	func cancel()
}

public protocol FeedImageDataLoader {
	typealias Result = Swift.Result<Data, Error>

	func loadImageData(from url: URL, completion: @escaping (Result) -> Void) -> FeedImageDataLoaderTask
}
