//
//  CahcingHelper.swift
//  AloMoves
//
//  Created by Amr on 19/10/2021.
//

import Foundation

class ChallangeStructHolder: NSObject {
    let Challange: ChallanegModel
    init(challange: ChallanegModel) {
        self.Challange = challange
    }
}

 class cacheHelper {
    static let shared = cacheHelper()
    
    let cache = NSCache<NSString, ChallangeStructHolder>()
    
    func saveAtCache(challane : ChallangeStructHolder, idKey :NSString){
        cache.setObject(challane, forKey: idKey)
    }
    
    func retriveFromCache ( key :NSString ,completion: @escaping (_ challange: ChallanegModel?, _ succ: Bool) -> ()) {
        if let challange = cache.object(forKey: key) {
            completion(challange.Challange,true)
        } else {
            completion(nil,false)
        }
    }
    
}
