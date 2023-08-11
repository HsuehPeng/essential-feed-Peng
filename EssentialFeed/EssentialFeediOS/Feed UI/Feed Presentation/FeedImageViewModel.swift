//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Hsueh Peng Tseng on 2023/8/10.
//

struct FeedImageViewModel<Image> {
	let description: String?
	let location: String?
	let image: Image?
	let isLoading: Bool
	let shouldRetry: Bool
	
	var hasLocation: Bool {
		return location != nil
	}
}
