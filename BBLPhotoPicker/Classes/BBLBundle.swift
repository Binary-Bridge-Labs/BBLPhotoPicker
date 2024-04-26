//
//  BBLBundle.swift
//  Pods
//
//  Created by wade.hawk on 2017. 5. 9..
//
//

import UIKit

open class BBLBundle {
    open class func podBundleImage(named: String) -> UIImage? {
        let podBundle = Bundle(for: BBLBundle.self)
        if let url = podBundle.url(forResource: "BBLPhotoPickerController", withExtension: "bundle") {
            let bundle = Bundle(url: url)
            return UIImage(named: named, in: bundle, compatibleWith: nil)
        }
        return nil
    }
    
    class func bundle() -> Bundle {
        let podBundle = Bundle(for: BBLBundle.self)
        if let url = podBundle.url(forResource: "BBLPhotoPicker", withExtension: "bundle") {
            let bundle = Bundle(url: url)
            return bundle ?? podBundle
        }
        return podBundle
    }
}
