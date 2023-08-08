//
//  FeedImageCell.swift
//  Prototype
//
//  Created by Hsueh Peng Tseng on 2023/8/8.
//

import UIKit

final class FeedImageCell: UITableViewCell {
	@IBOutlet private(set) var locationContainer: UIView!
	@IBOutlet private(set) var locationLabel: UILabel!
	@IBOutlet private(set) var feedImageView: UIImageView!
	@IBOutlet private(set) var descriptionLabel: UILabel!
}
