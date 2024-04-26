//
//  BBLPhotopickerDataSourcesProtocol.swift
//  BBLPhotoPicker
//
//  Created by wade.hawk on 21/01/2019.
//

import UIKit
import Photos

public protocol BBLPhotopickerDataSourcesProtocol {
    func headerReferenceSize() -> CGSize
    func footerReferenceSize() -> CGSize
    func registerSupplementView(collectionView: UICollectionView)
    func supplementIdentifier(kind: String) -> String
    func configure(supplement view: UICollectionReusableView, section: (title: String, assets: [BBLPHAsset]))
}