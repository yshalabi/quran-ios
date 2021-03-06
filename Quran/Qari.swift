//
//  Qari.swift
//  Quran
//
//  Created by Mohamed Afifi on 4/27/16.
//
//  Quran for iOS is a Quran reading application for iOS.
//  Copyright (C) 2017  Quran.com
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//

import Foundation

enum AudioType {
    case gapless(databaseName: String)
    case gapped
}

struct Qari: Hashable {
    let id: Int
    let name: String
    let path: String
    let audioURL: URL
    let audioType: AudioType
    let imageName: String

    var hashValue: Int {
        return id.hashValue
    }
}

func == (lhs: Qari, rhs: Qari) -> Bool {
    return lhs.id == rhs.id
}

extension Qari {
    func localFolder() -> URL {
        return FileManager.documentsURL.appendingPathComponent(path)
    }
}
