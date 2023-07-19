//
//  Colour.swift
//  
//
//  Created by Griselda Morales on 11/07/23.
//

import Foundation
import SwiftUI


 public extension Color {
 static var themeA: Color  {
     return Color(UIColor.blue)
 }
 static var BackgroundColorA: Color  {
     return Color(UIColor.red)
 }
 static var BackgroundColorListA: Color  {
     return Color("BackgroundColor")
 }
 static var ColorPrimaryDosA: Color  {
     return Color(UIColor.orange)
 }
 static var AccentA: Color  {
     return Color(UIColor.cyan)
 }
 static var TextColorPrimaryA: Color  {
     return Color(UIColor.gray)
 }
 static var TextColorSecondaryA: Color  {
     return Color(UIColor.darkGray)
 }
}

struct multimarca {
    var name: String
    var tema: tema
}

struct tema {
    var name: String
    var estilos: styles
}

struct styles {
    var backgroundPrimary: String
    var textPrimary: String
    var textSecondary: String
    var textPlaceholder: String
    var actionPrimary: String
    var backgroundSecondary: String
}

/*
public extension UIColor {
   struct MyTheme {
       static var backgroundPrimary: UIColor  { return Tokens.baseYellow950 }
       static var textPrimary: UIColor { return Tokens.baseBlue50  }
       static var textSecondary: UIColor { return Tokens.baseRed300  }
       static var textPlaceholder: UIColor { return Tokens.basePeach500  }
       static var actionPrimary: UIColor { return Tokens.baseYellow850  }
       static var backgroundSecondary: UIColor { return Tokens.baseGray800  }
  }
}
*/
