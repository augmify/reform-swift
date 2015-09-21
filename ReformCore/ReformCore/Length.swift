//
//  Length.swift
//  ReformCore
//
//  Created by Laszlo Korte on 13.08.15.
//  Copyright © 2015 Laszlo Korte. All rights reserved.
//

import ReformMath

public protocol RuntimeLength {
    func getLengthFor<R:Runtime>(runtime: R) -> Double?

    func isEqualTo(other: RuntimeLength) -> Bool
}

public protocol WriteableRuntimeLength : RuntimeLength {
    func setLengthFor<R:Runtime>(runtime: R, length: Double)
}

extension RuntimeLength where Self : Equatable {
    func isEqualTo(other: RuntimeLength) -> Bool {
        guard let other = other as? Self else {
            return false
        }

        return self == other
    }
}