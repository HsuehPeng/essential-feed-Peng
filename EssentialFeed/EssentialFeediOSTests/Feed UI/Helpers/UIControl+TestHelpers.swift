//
//  UIControl+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Hsueh Peng Tseng on 2023/8/10.
//

import UIKit

extension UIControl {
	func simulate(event: UIControl.Event) {
		allTargets.forEach { target in
			actions(forTarget: target, forControlEvent: event)?.forEach {
				(target as NSObject).perform(Selector($0))
			}
		}
	}
}
