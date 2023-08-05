//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Hsueh Peng Tseng on 2023/7/8.
//

import Foundation

struct RemoteFeedItem: Decodable {
	let id: UUID
	let description: String?
	let location: String?
	let image: URL
}
