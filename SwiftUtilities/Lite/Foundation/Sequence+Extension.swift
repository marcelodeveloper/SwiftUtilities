//
//  Sequence+Extension.swift
//  SwiftUtilities
//
//  Created by Rodrigo Ruiz on 4/25/17.
//  Copyright © 2017 Rodrigo Ruiz. All rights reserved.
//

extension Sequence {
    
    public func reduce(_ combine: (Self.Iterator.Element, Self.Iterator.Element) -> Self.Iterator.Element) -> Self.Iterator.Element {
        let initial: Self.Iterator.Element? = nil
        return reduce(initial, { (result, element) in
            guard let result = result else { return element }
            
            return combine(result, element)
        })!
    }
    
}

public func map<T1, T2>(_ transform: @escaping (T1) -> T2) -> (AnySequence<T1>) -> [T2] {
    return { $0.map(transform) }
}