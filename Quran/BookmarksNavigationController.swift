//
//  BookmarksNavigationController.swift
//  Quran
//
//  Created by Mohamed Afifi on 5/26/16.
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

import UIKit

class BookmarksNavigationController: BaseNavigationController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }

    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        tabBarItem = UITabBarItem(title: NSLocalizedString("menu_bookmarks", tableName: "Android", comment: ""),
                                  image: #imageLiteral(resourceName: "bookmarks-empty-25"),
                                  selectedImage: #imageLiteral(resourceName: "bookmarks-filled-25"))
    }

    required init?(coder aDecoder: NSCoder) {
        unimplemented()
    }
}
