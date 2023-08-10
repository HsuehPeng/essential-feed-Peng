//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Hsueh Peng Tseng on 2023/8/10.
//

import UIKit

extension UIButton {
	func simulateTap() {
		allTargets.forEach { target in
			actions(forTarget: target, forControlEvent: .touchUpInside)?.forEach {
				(target as NSObject).perform(Selector($0))
			}
		}
	}
}
