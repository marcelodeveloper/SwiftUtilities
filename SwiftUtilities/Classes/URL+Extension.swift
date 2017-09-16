//
//  URL+Extension.swift
//  MyLibrary
//
//  Created by Rodrigo Ruiz on 4/25/17.
//  Copyright © 2017 Rodrigo Ruiz. All rights reserved.
//

import Foundation


extension URL {
    
    public var resourceSpecifier: String? {
        get {
            guard let scheme = scheme else { return nil }
            
            // scheme://resourceSpecifier
            return absoluteString.substring(from: absoluteString.index(scheme.endIndex, offsetBy: 4))
        }
    }
    
}