//
//  ReportViewData.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/08.
//

import Foundation

struct ReportViewData {
    let datas: [ReportData] = [
        ReportData(text: "마스터링", currentCount: 22, maxCount: 64),
        ReportData(text: "슈팅", currentCount: 11, maxCount: 18),
        ReportData(text: "패스", currentCount: 13, maxCount: 33),
        ReportData(text: "드리블", currentCount: 35, maxCount: 64),
    ]
}
