//
//  PasswordValidator.swift
//  Viper-Demo
//
//  Created by Zvonimir Medak on 05.10.2021..
//

import Foundation

class PasswordValidator: StringValidator {

    private let minLength: Int

    init(minLength: Int) {
        self.minLength = minLength
    }

    func isValid(_ value: String) -> Bool {
        return value.count >= minLength
    }
}
