//
//  OnboardingChoiceView.swift
//  UpnBe
//
//  Created by Rarla on 2024/02/02.
//

import SwiftUI

struct OnboardingChoiceView: View {
    @Binding var isFirstLaunching: Bool
    @State var selectedSport: SportsType?
    @State var isActive: Bool = false
    @State var isShowPopup: Bool = false
    @State var isNextButtonTapped: Bool = false
    @State var isPopupButtonTapped: Bool = false
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    func popupButtonTapped() {
        isPopupButtonTapped = true
    }
    
    var body: some View {
        ZStack {
            Color.background
            
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    Text("어떤 종목을 함께 할까요?")
                        .font(.notoSansExtraBold24)
                        .foregroundColor(.color1)
                        .multilineTextAlignment(.center)
                    Spacer()
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(SportsType.allCases, id: \.self) { sport in
                            Button(action: {
                                selectedSport = sport
                                
                                if selectedSport == .soccer {
                                    isActive = true
                                } else {
                                    isActive = false
                                    isShowPopup = true
                                }
                            }) {
                                sport.image
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width * 164 / 360)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20).stroke(selectedSport == sport ? Color.basic : .clear, lineWidth: 2)
                                    )
                            }
                            .sheet(isPresented: $isShowPopup) {
                                if let sport = selectedSport {
                                    TwoButtonBottomSheet(
                                        isShowTextField: true,
                                        text: "\(sport.name)도 빠르게 준비중이에요.\n\(sport.name) 출시 알림을 받고싶다면\n연락처를 남겨주세요.",
                                        confirmButtonText: "미리알림받기",
                                        cancelButtonText: "종목출시만 요청",
                                        confirmAction: popupButtonTapped,
                                        cancelAction: popupButtonTapped
                                    )
                                    .setSheet()
                                }
                            }
                        }
                    }
                    .padding(10)
                    
                    Spacer()
                    
                    BackgroundColorButton(
                        buttonText: "다음",
                        action: {
                            isNextButtonTapped = true
                        },
                        width: geometry.size.width,
                        height: 50,
                        isActive: $isActive
                    )
                    .disabled(!isActive)
                    .fullScreenCover(isPresented: $isNextButtonTapped) {
                        OnboardingReadyView(isFirstLaunching: $isFirstLaunching)
                            .environmentObject(TabObservableObject())
                    }
                }
            }
            .padding(.horizontal, 10)
            .padding(.bottom, 30)
        }
        .ignoresSafeArea()
    }
}

struct OnboardingChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingChoiceView(isFirstLaunching: .constant(true))
    }
}
