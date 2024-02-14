# UPnBE 기업과제 교육형 프로젝트

### 기업과제 진행 목표
- SwiftUI를 활용한 UI 구현
  - SwiftUI 학습
- MVVM 패턴 학습
  - Mock Data 처리

<br/>

### 개발 기간
2024.01.31 ~ 2024.02.14 (2주)

<br/>

### 작동 영상
![image](https://hackmd.io/_uploads/SJvyVl5ia.png)


<br/>

### 폴더 구조
```
├── Components
│   ├── Buttons
│   │   ├── BackgroundColorButton.swift
│   │   └── Color1Button.swift
│   ├── ProgressBar
│   │   └── ProgressBar.swift
│   ├── Shape
│   │   └── TopRoundedRectangle.swift
│   ├── Sheets
│   │   ├── OneButtonBottomSheet.swift
│   │   └── TwoButtonBottomSheet.swift
│   ├── TextFields
│   │   └── CommonTextField.swift
│   └── WebView
│       └── WebView.swift
├── Constants
│   ├── Color.swift
│   └── Font.swift
├── Model
│   ├── DTO
│   │   ├── FilterData.swift
│   │   ├── OnboardingReadyData.swift
│   │   ├── ReportData.swift
│   │   └── SaveData.swift
│   ├── FilterViewData.swift
│   ├── OnboardingReadyViewData.swift
│   ├── ReportViewData.swift
│   └── SaveViewData.swift
├── Preview Content
│   └── Preview Assets.xcassets
│       └── Contents.json
├── Resources
│   ├── Assets.xcassets
│   │   ├── AccentColor.colorset
│   │   │   └── Contents.json
│   │   ├── AppIcon.appiconset
│   │   │   └── Contents.json
│   │   ├── Colors
│   │   │   ├── Contents.json
│   │   │   ├── background.colorset
│   │   │   │   └── Contents.json
│   │   │   ├── background2.colorset
│   │   │   │   └── Contents.json
│   │   │   ├── background3.colorset
│   │   │   │   └── Contents.json
│   │   │   ├── background4.colorset
│   │   │   │   └── Contents.json
│   │   │   ├── background5.colorset
│   │   │   │   └── Contents.json
│   │   │   ├── basic.colorset
│   │   │   │   └── Contents.json
│   │   │   ├── black.colorset
│   │   │   │   └── Contents.json
│   │   │   ├── color1.colorset
│   │   │   │   └── Contents.json
│   │   │   ├── color2.colorset
│   │   │   │   └── Contents.json
│   │   │   ├── color3.colorset
│   │   │   │   └── Contents.json
│   │   │   ├── color4.colorset
│   │   │   │   └── Contents.json
│   │   │   └── color5.colorset
│   │   │       └── Contents.json
│   │   ├── Contents.json
│   │   ├── Images
│   │   │   ├── Common
│   │   │   │   ├── Contents.json
│   │   │   │   ├── Logo.imageset
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── UNB_Logo.png
│   │   │   │   ├── icon-be-on.imageset
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── icon-be-on.png
│   │   │   │   ├── icon-be.imageset
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── icon-be.png
│   │   │   │   ├── icon-desc.imageset
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── icon-desc.png
│   │   │   │   ├── icon-profile-image.imageset
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── icon-profile-image.png
│   │   │   │   ├── icon-save-file-on.imageset
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── icon-save-on.png
│   │   │   │   ├── icon-save-file.imageset
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── icon-save.png
│   │   │   │   ├── icon-setting.imageset
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── icon-setting.png
│   │   │   │   ├── icon-up-on.imageset
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── icon-up-on.png
│   │   │   │   └── icon-up.imageset
│   │   │   │       ├── Contents.json
│   │   │   │       └── icon-up.png
│   │   │   ├── Contents.json
│   │   │   ├── Onboarding
│   │   │   │   ├── Basketball.imageset
│   │   │   │   │   ├── Basket.png
│   │   │   │   │   └── Contents.json
│   │   │   │   ├── Contents.json
│   │   │   │   ├── Soccer.imageset
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── Soccer.png
│   │   │   │   ├── Swimming.imageset
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   └── Swimming.png
│   │   │   │   └── Volleyball.imageset
│   │   │   │       ├── Contents.json
│   │   │   │       └── Volleyball.png
│   │   │   └── TabIcons
│   │   │       ├── Contents.json
│   │   │       ├── icon-filter-off.imageset
│   │   │       │   ├── Contents.json
│   │   │       │   └── tune_basic.svg
│   │   │       ├── icon-filter-on.imageset
│   │   │       │   ├── Contents.json
│   │   │       │   └── icon-filter-on.svg
│   │   │       ├── icon-profile-off.imageset
│   │   │       │   ├── Contents.json
│   │   │       │   └── profile.svg
│   │   │       ├── icon-profile-on.imageset
│   │   │       │   ├── Contents.json
│   │   │       │   └── icon-profile-on.svg
│   │   │       ├── icon-report-off.imageset
│   │   │       │   ├── Contents.json
│   │   │       │   └── icon-report-off.svg
│   │   │       ├── icon-report-on.imageset
│   │   │       │   ├── Contents.json
│   │   │       │   └── icon-report-on.svg
│   │   │       ├── icon-save-off.imageset
│   │   │       │   ├── Contents.json
│   │   │       │   └── icon-save-off.svg
│   │   │       ├── icon-save-on.imageset
│   │   │       │   ├── Contents.json
│   │   │       │   └── icon-save-on.svg
│   │   │       ├── icon-shortform-off.imageset
│   │   │       │   ├── Contents.json
│   │   │       │   └── slideshow.svg
│   │   │       └── icon-shortform-on.imageset
│   │   │           ├── Contents.json
│   │   │           └── icon-shortform-on.svg
│   │   └── Sample
│   │       ├── Contents.json
│   │       └── sample-save-image.imageset
│   │           ├── Contents.json
│   │           └── sample-save-image.png
│   ├── Fonts
│   │   ├── NotoSans-ExtraBold.ttf
│   │   └── NotoSans-Medium.ttf
│   └── Info.plist
├── UpnBeApp.swift
├── ViewModel
│   ├── FilterViewModel.swift
│   ├── OnboardingChoiceViewModel.swift
│   ├── OnboardingReadyViewModel.swift
│   ├── ReportViewModel.swift
│   ├── SaveViewModel.swift
│   ├── ShortFormViewModel.swift
│   └── VideoPlayerViewModel.swift
└── Views
    ├── ContentView.swift
    ├── LaunchView.swift
    ├── MainTabViews
    │   ├── FilterTab
    │   │   ├── FilterBox.swift
    │   │   ├── FilterBoxList.swift
    │   │   ├── FilterButton.swift
    │   │   ├── FilterConfirmButton.swift
    │   │   ├── FilterResetButton.swift
    │   │   └── FilterView.swift
    │   ├── ProfileTab
    │   │   ├── Enum
    │   │   │   └── ProfileMenus.swift
    │   │   ├── ProfileBox.swift
    │   │   ├── ProfileMenuLine.swift
    │   │   ├── ProfileMenuList.swift
    │   │   └── ProfileView.swift
    │   ├── ReportTab
    │   │   ├── ReportDrillCurrentState.swift
    │   │   ├── ReportDrillLevel.swift
    │   │   ├── ReportProfileBox.swift
    │   │   └── ReportView.swift
    │   ├── SaveTab
    │   │   ├── SaveTabBar.swift
    │   │   ├── SaveTabButton.swift
    │   │   ├── SaveVideoView.swift
    │   │   ├── SaveView.swift
    │   │   └── VideoGridView.swift
    │   ├── ShortFormTab
    │   │   ├── CustomVideoPlayer.swift
    │   │   ├── Enum
    │   │   │   └── ShortStatus.swift
    │   │   ├── ShortFormButton.swift
    │   │   ├── ShortFormButtons.swift
    │   │   ├── ShortFormView.swift
    │   │   ├── VideoControlBar.swift
    │   │   └── VideoPlayerView.swift
    │   └── TabsView.swift
    └── OnboardingViews
        ├── Common
        │   └── OnboardingTitle.swift
        ├── Enum
        │   └── SportsType.swift
        ├── OnboardingChoice
        │   ├── NextButton.swift
        │   ├── OnboardingChoiceView.swift
        │   ├── SportsButton.swift
        │   └── SportsListButtons.swift
        └── OnboardingReady
            ├── OnboardingReadyDesc.swift
            └── OnboardingReadyView.swift
```

<br/>

### 개발 상세
1. Font, Color Set 정의
2. 공통 컴포넌트 제작
  - button
  - sheet
3. 온보딩 페이지 제작
4. TabView 제작
      - Profile
        - WebView 연결
      - Report
      - ShortForm
        - Video Player
      - Save
      - Filter
5. Refactoring

