//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by Hsueh Peng Tseng on 2023/8/14.
//

public struct FeedErrorViewModel {
	public let message: String?

	static var noError: FeedErrorViewModel {
		return FeedErrorViewModel(message: nil)
	}

	static func error(message: String) -> FeedErrorViewModel {
		return FeedErrorViewModel(message: message)
	}
}
