//
//  NetworkDataLoader.swift
//  iTunes Search
//
//  Created by Jordan Christensen on 10/15/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    func loadData(with request: URLRequest, completion: @escaping (Data?, Error?) -> Void)
}
