//
//  theme.swift
//  dls-framework
//
//  Created by Griselda Morales on 12/07/23.
//


import UIKit

public protocol ThemeProvider {
    func adaptiveColor(
        _ style: ColorStyle,
        isDarkMode: Bool,
        prefersHighContrast: Bool
    ) -> UIColor
    
   /* func adaptiveFont(
        _ style: FontStyle,
        contentSize: UIContentSizeCategory,
        prefersBoldText: Bool
    ) -> UIFont*/
}

//IN CASE THAT MULTIMARC 
public enum themes: String{
    case Marca1 = "Marca1"
    case Marca2 = "Marca2"
    case Marca3 = "Marca3"
    case Marca4 = "Marca4"
}

let bundle = Bundle(for: AppTheme.self)

public class AppTheme: ThemeProvider {
    
    public init() {
        print("holaaa")
       // UIFont.loadFontsIfNeeded()
    }
    
    public func adaptiveColor(
        _ style: ColorStyle,
        isDarkMode: Bool,
        prefersHighContrast: Bool
    ) -> UIColor {
        print("QUE ESSS")
        print(style)

        
        print("COLORR_1");
        print(isDarkMode);
        let ListColors = isDarkMode ? style.DarkColors : style.LightColors;
        // we can safely force unwrap here because it is covered by our unit tests
        return ListColors
    }
    
   /* public func adaptiveFont(
        _ style: FontStyle,
        contentSize: UIContentSizeCategory,
        prefersBoldText: Bool
    ) -> UIFont {
        return ScaledFont.load(
            style,
            contentSize: contentSize,
            prefersBoldText: prefersBoldText
        )
    }*/
}

// MARK: SwiftUI

import SwiftUI

@available(iOS 13.0, *)
public extension ThemeProvider {
    func adaptiveColor(
        _ style: ColorStyle,
        isDarkMode: Bool,
        prefersHighContrast: Bool
    ) -> Color {
        print("QUE ESSS")
        print(style)
        print("COLORR_2");
        print(isDarkMode);
        
        //let ListColors = isDarkMode ? style.DarkColors : style.LightColors;
        
        return Color(
            self.adaptiveColor(
                style,
                isDarkMode: isDarkMode,
                prefersHighContrast: prefersHighContrast
            )
        )
    }
    
   /* func adaptiveFont(
        _ style: FontStyle,
        contentSize: ContentSizeCategory,
        prefersBoldText: Bool
    ) -> Font {
        let convertedSize = contentSize.toUIKIt()
        return Font(
            self.adaptiveFont(
                style,
                contentSize: convertedSize,
                prefersBoldText: prefersBoldText
            )
        )
    }*/
}
