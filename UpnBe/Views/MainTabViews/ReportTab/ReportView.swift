//
//  ReportView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/05.
//

import SwiftUI

struct ReportView: View {
    let viewModel = ReportViewModel()

    var body: some View {
        ScrollView {
            Color.black.edgesIgnoringSafeArea(.all)
            ZStack {
                VStack(spacing: 0) {
                    ReportProfileBox()
                    
                    VStack(spacing: 15) {
                        ReportDrillLevel(datas: viewModel.getData())
                        ReportDrillCurrentState(datas: viewModel.getData())
                        Spacer()
                    }
                    .padding(.vertical, 20)
                    .padding(.horizontal, 25)
                    .background(Color.background)
                }
            }
        }
    }
}

struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        ReportView()
    }
}
