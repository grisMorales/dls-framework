//
//  ColorStyle.swift
//  dls-framework
//
//  Created by Griselda Morales on 12/07/23.
//

import UIKit
import Foundation

/*public enum ColorStyle {
    static var backgroundPrimary: UIColor  { return Tokens.baseYellow950 }
    static var textPrimary: UIColor { return Tokens.baseBlue50  }
    static var textSecondary: UIColor { return Tokens.baseRed300  }
    static var textPlaceholder: UIColor { return Tokens.basePeach500  }
    static var actionPrimary: UIColor { return Tokens.baseYellow850  }
    static var backgroundSecondary: UIColor { return Tokens.baseGray800  }
}*/

public enum Style{
    case backgroundPrimary
    case textPrimary
    case textSecondary
    case textPlaceholder
    case actionPrimary
    case backgroundSecondary
}


/*public struct designSystem {
    enum marcar: String{
    case marca1 = "BanCoppel"
    case marca2 = "Coppel"
    
        var DarkColors: UIColor;
    var marcas: String{
        switch self {
            case .marca1:
             enum Style {
                case backgroundPrimary
                case textPrimary
                case textSecondary
                case textPlaceholder
                case actionPrimary
                case backgroundSecondary
                 
                 self.DarkColors {
                      
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
                 var LightColors: UIColor{
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
                 }
            }
        case .marca2:
            return enum Style {
               case backgroundPrimary
               case textPrimary
               case textSecondary
               case textPlaceholder
               case actionPrimary
               case backgroundSecondary
                
                var DarkColors: UIColor{
                     
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
                var LightColors: UIColor{
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
                }
           }
        }
    }
    


    
    }
}*/





public enum ColorStyle {
    case backgroundPrimary
    case textPrimary
    case textSecondary
    case textPlaceholder
    case actionPrimary
    case backgroundSecondary
    
    var DarkColors: UIColor{
         
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
    var LightColors: UIColor{
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
    }
    
    

}

public func adaptiveColor(_ style: ColorStyle,isDarkMode: Bool,prefersHighContrast: Bool) -> UIColor {
    let ListColors = isDarkMode ? style.DarkColors : style.LightColors;
    return ListColors
}

//I fixed the error by simply using var action2 = "" instead of var action2: String
/*public func getStyles() -> ColorStyle{
    let marca = "BanCoppel";
    let hola: ColorStyle;
    if(marcas.marca1.rawValue == marca){
    }
    return hola;

}*/

//EXAMPLE COLORS
public enum SGColor {
    case red
    case green
    case purple
}
extension SGColor: RawRepresentable {
    public typealias RawValue = UIColor

    public init?(rawValue: RawValue) {
        switch rawValue {
        case #colorLiteral(red: 0.004, green: 0.082, blue: 0.031, alpha: 1): self = .red
        case #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1): self = .green
        case #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1): self = .purple
        default: return nil
        }
    }

public var rawValue: RawValue {
        switch self {
        case .red: return #colorLiteral(red: 0.01568627451, green: 0.3215686275, blue: 0.1215686275, alpha: 1)
        case .green: return #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        case .purple: return #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        }
    }
}


/*public enum ColorStyle: String, CaseIterable {
    case backgroundPrimary
    case textPrimary
    case textSecondary
    case textPlaceholder
    case actionPrimary
    case backgroundSecondary
}

extension ColorStyle {
    func load() -> UIColor? {
        if #available(iOS 13.0, *) {
            return UIColor(
                named: self.rawValue,
                in: bundle,
                compatibleWith: .current
            )
        } else {
            return UIColor(
                named: self.rawValue,
                in: bundle,
                compatibleWith: nil
            )
        }
    }
}*/
