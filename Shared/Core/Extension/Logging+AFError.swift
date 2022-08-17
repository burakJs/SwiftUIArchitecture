//
//  Logging+AFError.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 16.08.2022.
//

import Foundation
import Alamofire
import Logging

extension AFError {
    private static let logger = Logger(label: "")
    
    func showError() {
        AFError.logger.error("\(errorDescription?.description ?? "Undefined Error")")
    }
}
