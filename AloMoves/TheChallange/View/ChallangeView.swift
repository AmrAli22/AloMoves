//
//  ChallangeView.swift
//  AloMoves
//
//  Created by Amr on 19/10/2021.
//

import UIKit
import SnapKit

class ChallangeView : UIViewController {
    
    lazy var CoverView: UIImageView = {
        let hv = UIImageView(image: UIImage(named: "FirstCover"))
        hv.contentMode = .scaleAspectFill
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
        setupUI()
        
    }
    
    private func setupUI(){
        view.backgroundColor = .white
        view.addSubview(tableView)
        view.addSubview(CoverView)
        
        CoverView.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(400)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalTo(tableView.snp.top)
        }
        
        tableView.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.centerX.equalToSuperview()
            make.top.equalTo(CoverView.snp.bottom)
            make.bottom.equalToSuperview()
        }
    }
}
