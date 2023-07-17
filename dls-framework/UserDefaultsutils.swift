//
//  UserDefaultsutils.swift
//  
//
//  Created by Griselda Morales on 11/07/23.
//

import Foundation

public class UserDefaultsUtils {
public static var shared = UserDefaultsUtils()
 public func setDarkMode(enable: Bool) {
   let defaults = UserDefaults.standard
   defaults.set(enable, forKey: Constants.DARK_MODE)
 }
 public func getDarkMode() -> Bool {
  let defaults = UserDefaults.standard
  return defaults.bool(forKey: Constants.DARK_MODE)
 }
}
