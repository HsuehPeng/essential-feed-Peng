//
//  FeedRefreshViewController.swift
//  EssentialFeediOS
//
//  Created by Hsueh Peng Tseng on 2023/8/10.
//

import UIKit
import EssentialFeed

protocol FeedRefreshViewControllerDelegate {
	func didRequestFeedRefresh()
}

final class FeedRefreshViewController: NSObject, FeedLoadingView {
	@IBOutlet private var view: UIRefreshControl?

	var delegate: FeedRefreshViewControllerDelegate?
	
	@IBAction func refresh() {
		delegate?.didRequestFeedRefresh()
	}
	
	func display(_ viewModel: FeedLoadingViewModel) {
		if viewModel.isLoading {
			view?.beginRefreshing()
		} else {
			view?.endRefreshing()
		}
	}

}
