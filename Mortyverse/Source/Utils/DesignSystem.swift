//
//  DesignSystem.swift
//  Mortyverse
//
//  Created by Lucas Almeida on 28/03/23.
//

import SwiftUI

struct DSColor {
    // Brand
    static let primary = Color("BrandPrimary")
    static let secondary = Color("BrandSecondary")
    
    // Scale
    static let scale1 = Color("Scale1")
    static let scale2 = Color("Scale2")
    static let scale3 = Color("Scale3")
    static let scale4 = Color("Scale4")
    static let scale5 = Color("Scale5")
    
    // Opacity
    static let opacity1 = Color("Opacity1")
    static let opacity2 = Color("Opacity2")
    static let opacity3 = Color("Opacity3")
    static let opacity4 = Color("Opacity4")
    static let opacity5 = Color("Opacity5")
}

struct DSFont {
    static let largeTitle = Font.custom("Space Grotesk", size: 34)
    static let title = Font.custom("Space Grotesk", size: 28)
    static let title2 = Font.custom("Space Grotesk", size: 22)
    static let title3 = Font.custom("Space Grotesk", size: 20)
    static let headline = Font.custom("Space Grotesk", size: 17)
    static let body = Font.custom("Space Grotesk", size: 17)
    static let callout = Font.custom("Space Grotesk", size: 16)
    static let subheadline = Font.custom("Space Grotesk", size: 15)
    static let footnote = Font.custom("Space Grotesk", size: 13)
    static let caption = Font.custom("Space Grotesk", size: 12)
    static let caption2 = Font.custom("Space Grotesk", size: 11)
}
