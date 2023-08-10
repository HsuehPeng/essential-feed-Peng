//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Hsueh Peng Tseng on 2023/8/10.
//

import UIKit

extension UIButton {
	func simulateTap() {
		simulate(event: .touchUpInside)
	}
}
