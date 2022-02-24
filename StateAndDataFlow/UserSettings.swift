//
//  UserSettings.swift
//  StateAndDataFlow
//
//  Created by Anna Melekhina on 24.02.2022.
//

import Foundation

final class UserSettings: ObservableObject {
    
    
    private enum SettingsKeys: String {
        case userName
    }
    
    static var name: String! {
        get {
            return UserDefaults.standard.string(forKey: SettingsKeys.userName.rawValue)
        } set {
            
            let defaults = UserDefaults.standard
            let key = SettingsKeys.userName.rawValue
            if let name = newValue {
                defaults.set(name, forKey: key)
            } else {
                defaults.removeObject(forKey: key)
            }
                
        }
    }
    
}
