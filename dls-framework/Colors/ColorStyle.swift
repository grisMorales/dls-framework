//
//  ColorStyle.swift
//  dls-framework
//
//  Created by Griselda Morales on 12/07/23.
//

import UIKit
import Foundation

public enum marcas: String{
    case marca1 = "BanCoppel"
    case marca2 = "Coppel"
}

public enum ColorStyle {
    case backgroundPrimary
    case textPrimary
    case textSecondary
    case textPlaceholder
    case actionPrimary
    case backgroundSecondary
}

public var marca = "BanCoppel"

public extension ColorStyle {
    var DarkColors: UIColor{
        if (marca == marcas.marca1.rawValue){ //DARK MODE MARCA 1
            print("DARK_COLOR_MARCA1")
            switch self {
                case .backgroundPrimary:
                    return Tokens.baseYellow950
                case .textPrimary:
                    return Tokens.baseBlue50
                case .textSecondary:
                    return Tokens.basePurple50
                case .textPlaceholder:
                    return Tokens.baseBlue50
                case .actionPrimary:
                    return Tokens.baseRed300
                case .backgroundSecondary:
                    return Tokens.basePeach500
                //default:
                //return Tokens.baseRed300
            }
        }else{ //DARK MODE MARCA 2
            print("DARK_COLOR_MARCA2")
            switch self {
                case .backgroundPrimary:
                    return Tokens.baseYellow950
                case .textPrimary:
                    return Tokens.baseBlue50
                case .textSecondary:
                    return Tokens.basePurple50
                case .textPlaceholder:
                    return Tokens.baseBlue50
                case .actionPrimary:
                    return Tokens.baseRed300
                case .backgroundSecondary:
                    return Tokens.basePeach500
                //default:
                //return Tokens.baseRed300
            }
        }
    }

    var LightColors: UIColor{

        if (marca == marcas.marca1.rawValue){ //DARK MODE MARCA 1
            print("LIGHT_COLOR_MARCA1")
            switch self {
                case .backgroundPrimary:
                    return Tokens.baseGray800
                case .textPrimary:
                    return Tokens.baseRed400
                case .textSecondary:
                    return Tokens.baseBlue800
                case .textPlaceholder:
                    return Tokens.baseYellow50
                case .actionPrimary:
                    return Tokens.baseGreen400
                case .backgroundSecondary:
                    return Tokens.basePurple700
                //default:
                //return Tokens.baseRed300
            }
        }else{
            print("LIGHT_COLOR_MARCA2")
            switch self {
                case .backgroundPrimary: //#colorLiteral(
                return #colorLiteral(red: 1, green: 0.3294117647, blue: 0.431372549, alpha: 1)
                case .textPrimary:
                    return Tokens.baseRed400
                case .textSecondary:
                    return Tokens.baseBlue800
                case .textPlaceholder:
                    return Tokens.baseYellow50
                case .actionPrimary:
                    return Tokens.baseGreen400
                case .backgroundSecondary:
                    return Tokens.basePurple700
                //default:
                 //return Tokens.baseRed300
            }
        }
    }
}

public func adaptiveColor(_ style: ColorStyle,isDarkMode: Bool,prefersHighContrast: Bool) -> UIColor {
    let ListColors = isDarkMode ? style.DarkColors : style.LightColors;
    return ListColors
}
