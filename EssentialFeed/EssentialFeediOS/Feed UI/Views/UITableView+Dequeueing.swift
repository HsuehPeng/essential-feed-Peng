//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Hsueh Peng Tseng on 2023/8/11.
//

import UIKit

extension UITableView {
	func dequeueReusableCell<T: UITableViewCell>() -> T {
		let identifier = String(describing: T.self)
		return dequeueReusableCell(withIdentifier: identifier) as! T
	}
}
