//
//  ReportViewModel.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/08.
//

import Foundation

struct ReportViewModel {
    private let data = ReportViewData()
    
    func getData() -> [ReportData] {
        return data.datas
    }
}
