//
//  FoxService.swift
//  SwiftUIArchitecture (iOS)
//
//  Created by Sr Burak on 16.08.2022.
//

import Foundation
import Alamofire


protocol IFoxService {
    func fetchItem(path: FoxPaths, onSuccess: @escaping (FoxModel?, Bool) -> Void)
}

// https://randomfox.ca/floof/
class FoxService: IFoxService {
    private let baseUrl: String = "https://randomfox.ca/"
    
    func fetchItem(path: FoxPaths, onSuccess: @escaping (FoxModel?, Bool) -> Void) {
        AF.request(baseUrl + path.rawValue).responseDecodable(of:FoxModel.self) { response in
            onSuccess(nil, false)
            guard let value = response.value else { return }
            onSuccess(value,true)
        }
    }
    
}

enum FoxPaths: String {
    case floof = "floof"
}
