//
//  HomeViewModelTests.swift
//  SOLID-STests
//
//  Created by Abdoelrhman Eaita on 19/09/2021.
//

import XCTest

@testable import AloMoves

class ViewControllerMock: ChallangeViewDelegate {
    func loadChallangeSuccess() {}
    
    func errorLoading(error: String) {}
    
    func showSpinner() {}
    
    func hideSpinner() {}
 
}


struct FakeDataSource: DataSource {
    var challange = ChallanegModel()
    func fetchChallange(completion: @escaping (ChallanegModel?, String?) -> ()) {
        completion(challange, "true")
    }
}

class HomeViewModelTests: XCTestCase {

    func testChallangeExsisit() throws {
        let sut = ChallangeViewModel(view : ViewControllerMock(), dataSource: FakeDataSource())
        sut.getChallange()
        XCTAssertNil(sut.challange)
    }
}
