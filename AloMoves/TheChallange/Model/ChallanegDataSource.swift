//
//  ChallanegDataSource.swift
//  AloMoves
//
//  Created by Amr on 19/10/2021.
//

import Foundation
struct challangeDataSource {
    func fetchChallange(completion: @escaping (_ challange: ChallanegModel?, _ message: String?) -> ()) {
        
        let cahceHelper = cacheHelper.shared
        
        cahceHelper.retriveFromCache(key: "cahcedIDKey")
        { (challange, IschallangeExsit) in
            if IschallangeExsit {
                completion(challange, nil)
            }else{
                let challange  = Bundle.main.decode(ChallanegModel.self, from: "TrainingSeries.json")
                if let retrivedChallange = challange {
                    cahceHelper.saveAtCache(challane: ChallangeStructHolder(challange: retrivedChallange), idKey: "cahcedIDKey")
                    completion(retrivedChallange, nil)
                }else{
                    completion(nil, "error")
                }
            }
        }
    }
}
