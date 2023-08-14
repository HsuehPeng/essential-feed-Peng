//
//  FeedErrorViewModel.swift
//  EssentialFeediOS
//
//  Created by Hsueh Peng Tseng on 2023/8/14.
//

struct FeedErrorViewModel {
	let message: String?
	
	static var noError: FeedErrorViewModel {
		return FeedErrorViewModel(message: nil)
	}

	static func error(message: String) -> FeedErrorViewModel {
		return FeedErrorViewModel(message: message)
	}
}
