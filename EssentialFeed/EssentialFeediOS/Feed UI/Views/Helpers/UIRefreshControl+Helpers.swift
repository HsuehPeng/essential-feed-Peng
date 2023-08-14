//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Hsueh Peng Tseng on 2023/8/14.
//

import UIKit

extension UIRefreshControl {
	func update(isRefreshing: Bool) {
		isRefreshing ? beginRefreshing() : endRefreshing()
	}
}
