//
//  BBLBundle+SPM.swift
//  
//
//  Created by wade.hawk on 2020/09/20.
//

import Foundation

import UIKit

open class BBLBundle {
    open class func podBundleImage(named: String) -> UIImage? {
        return UIImage(named: named, in: .module, compatibleWith: nil)
    }
    
    class func bundle() -> Bundle {
        let podBundle = Bundle.module
        if let url = podBundle.url(forResource: "BBLPhotoPicker", withExtension: "bundle") {
            let bundle = Bundle(url: url)
            return bundle ?? podBundle
        }
        return podBundle
    }
}
