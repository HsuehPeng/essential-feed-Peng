//
//  FeedRefreshViewController.swift
//  EssentialFeediOS
//
//  Created by Hsueh Peng Tseng on 2023/8/10.
//

import UIKit
import EssentialFeed

final class FeedRefreshViewController: NSObject {
	private(set) lazy var view = binded(UIRefreshControl())

	private let viewModel: FeedViewModel
	
	init(viewModel: FeedViewModel) {
		self.viewModel = viewModel
	}

	@objc func refresh() {
		viewModel.loadFeed()
	}
	
	private func binded(_ view: UIRefreshControl) -> UIRefreshControl {
		viewModel.onLoadingStateChange = { [weak view] isLoading in
			if isLoading {
				view?.beginRefreshing()
			} else {
				view?.endRefreshing()
			}
		}
		view.addTarget(self, action: #selector(refresh), for: .valueChanged)
		return view
	}
}