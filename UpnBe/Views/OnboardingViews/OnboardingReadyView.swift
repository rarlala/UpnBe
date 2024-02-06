//
//  OnboardingReadyView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/05.
//

import SwiftUI

struct OnboardingReadyView: View {
    @Binding var isFirstLaunching: Bool
    
    let datas = [
        (icon: "icon-up", text: "동작을 잘 따라할 수 있다면?"),
        (icon: "icon-be", text: "연습이 조금 더 필요하다면?"),
        (icon: "icon-save", text: "계속 저장하고 보고 싶을땐?")
    ]
    
    func confirmButtonTapped() {
        isFirstLaunching.toggle()
    }
    
    var body: some View {
        ZStack {
            Color.background
            
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    Text("나의 풋살 레벨은?")
                        .foregroundColor(.color1)
                        .font(.notoSansExtraBold24)
                    
                    Spacer().frame(height: 16)
                    
                    Text("내 레벨을 알기까지 걸리는 시간은 단 2분\n단 20개의 영상을 보고 선택만 하세요!")
                        .foregroundColor(.basic)
                        .font(.notoSansMedium14)
                        .multilineTextAlignment(.center)
                        .frame(height: 44)
                    
                    Spacer()
                    
                    ForEach(datas, id: \.self.icon) { icon, text in
                        HStack {
                            Image(icon)
                                .resizable()
                                .frame(width: 40, height: 40)
                            Spacer().frame(width: 19)
                            Text(text)
                                .font(.notoSansExtraBold14)
                                .foregroundColor(.basic)
                        }
                        Spacer().frame(height: 44)
                    }
                    
                    Spacer().frame(height: 90)
                    
                    Color1Button(
                        buttonText: "저장하기",
                        action: confirmButtonTapped,
                        width: geometry.size.width - 40,
                        height: 50
                    )
                    .padding(.horizontal, 20)
                    .padding(.bottom, 30)
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct OnboardingReadyView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingReadyView(isFirstLaunching: .constant(true))
            .environmentObject(TabObservableObject())
    }
}
