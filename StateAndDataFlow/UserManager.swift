//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by Anna Melekhina on 23.02.2022.
//

import Foundation
import Combine

class UserManager: ObservableObject {
    @Published var isRegistered = false
    var name = ""

}
