//
//  ChallanegModel.swift
//  AloMoves
//
//  Created by Amr on 19/10/2021.
//

import Foundation

struct ChallanegModel : Decodable{
    var challangeName, instractors , cover: String?
    var details: DetailsModel?
    }


struct DetailsModel: Decodable {
    var overView : OverViewModel
    var classes : [ClassModel]
    var commuinty : String
}

struct ClassModel: Decodable {
    var name: String
    var image: String
}

struct OverViewModel: Decodable {
    var id: Int
    var type: String
    var about: String
    var instractors : [instractorsModel]
}

struct instractorsModel: Decodable {
    var id: Int
    var name: String
    var desc: String
    
    }
