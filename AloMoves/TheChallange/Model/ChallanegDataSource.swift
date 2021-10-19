//
//  ChallanegDataSource.swift
//  AloMoves
//
//  Created by Amr on 19/10/2021.
//

import Foundation
struct challangeDataSource {
    func fetchChallange(completion: @escaping (_ challange: ChallanegModel?, _ message: String?) -> ()) {
        
        let challange  = Bundle.main.decode(ChallanegModel.self, from: "EpicHome.json")
        
        if let retrivedChallange = challange {
            completion(retrivedChallange, nil)
        }else{
            completion(nil, "error")
        }
    }
}
