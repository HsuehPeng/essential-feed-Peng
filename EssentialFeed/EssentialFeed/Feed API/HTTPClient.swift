//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Hsueh Peng Tseng on 2023/6/25.
//

import Foundation

public protocol HTTPClient {
	typealias Result = Swift.Result<(Data, HTTPURLResponse), Error>

	/// The completion handler can be invoked in any thread.
	/// Clients are responsible to dispatch to appropriate threads, if needed.
	func get(from url: URL, completion: @escaping (Result) -> Void)
}
