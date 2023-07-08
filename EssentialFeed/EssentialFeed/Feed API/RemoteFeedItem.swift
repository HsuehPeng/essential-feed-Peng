//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Hsueh Peng Tseng on 2023/7/8.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
	internal let id: UUID
	internal let description: String?
	internal let location: String?
	internal let image: URL
}
