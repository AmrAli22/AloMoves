//
//  viewModel.swift
//  AloMoves
//
//  Created by Amr on 19/10/2021.
//

import Foundation

protocol ChallangeViewDelegate: AnyObject {
    func loadChallangeSuccess()
    func errorLoading(error: String)
    func showSpinner()
    func hideSpinner()
}

class ChallangeViewModel : NSObject {
    
    var challange : ChallanegModel?
   private var view : ChallangeViewDelegate
    private var dataSource : DataSource?
    
    init(view:ChallangeViewDelegate, dataSource : DataSource) {
        self.view = view
        self.dataSource = dataSource
        super.init()
    }
    
    func getChallange(){
        view.showSpinner()
        dataSource?.fetchChallange { [weak self] (challange, msg) in
            guard let self = self else { return }
            self.view.hideSpinner()
            if let message = msg {
                self.view.errorLoading(error: message)
                return
            }
            if let _ = challange {
                self.challange = challange
                self.view.loadChallangeSuccess()
            }
        }
    }
}
