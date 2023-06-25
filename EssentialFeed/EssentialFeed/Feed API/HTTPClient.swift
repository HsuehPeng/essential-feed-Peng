//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Hsueh Peng Tseng on 2023/6/25.
//

import Foundation

public enum HTTPClientResult {
	case success(Data, HTTPURLResponse)
	case failure(Error)
}

public protocol HTTPClient {
	func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
