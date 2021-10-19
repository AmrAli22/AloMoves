//
//  ChallangeView.swift
//  AloMoves
//
//  Created by Amr on 19/10/2021.
//

import UIKit
class ChallangeView : UIViewController {
    
    lazy var CoverView: UIImageView = {
        let hv = UIImageView(image: UIImage(named: ""))
        hv.backgroundColor = .clear
        return hv
    }()
    
    lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.backgroundColor = .clear
        tv.separatorStyle = .none
        return tv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func setupUI(){
        view.addSubview(tableView)
    }
}
