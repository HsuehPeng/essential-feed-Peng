//
//  UIImageView+Animations.swift
//  EssentialFeediOS
//
//  Created by Hsueh Peng Tseng on 2023/8/11.
//

import UIKit

extension UIImageView {
	func setImageAnimated(_ newImage: UIImage?) {
		image = newImage

		guard newImage != nil else { return }

		alpha = 0
		UIView.animate(withDuration: 0.25) {
			self.alpha = 1
		}
	}
}
