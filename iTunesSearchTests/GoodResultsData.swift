//
//  GoodResultsData.swift
//  iTunesSearchTests
//
//  Created by Jordan Christensen on 10/15/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

let goodResults = """
{
  "resultCount": 2,
  "results": [
        {
          "trackName": "GarageBand",
          "artistName": "Apple",
        },
        {
          "trackName": "Garage Virtual Drumset Band",
          "artistName": "Nexogen Private Limited",
        }
    ]
}
""".data(using: .utf8)!

let badResults = """
{
  "resultCount": 2,
  "results": [
        {
          "trackName": "GarageBand",
          "artistsName": "Apple",
        },
        {
          "trackName": "Garage Virtual Drumset Band",
          "artistName": "Nexogen Private Limited",
        }
    ]
""".data(using: .utf8)!

let noResults = """
{
  "resultCount": 0,
  "results": []
}
""".data(using: .utf8)!
