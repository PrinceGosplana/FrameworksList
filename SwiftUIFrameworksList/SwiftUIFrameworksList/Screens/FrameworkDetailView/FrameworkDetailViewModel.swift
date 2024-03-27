//
//  FrameworkDetailViewModel.swift
//  SwiftUIFrameworksList
//
//  Created by Oleksandr Isaiev on 26.03.2024.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    
    var framework: Framework
    var isShowingDetailView: Binding<Bool>
    @Published var isShowingSafariView = false

    init(framework: Framework, isShowingDetailView: Binding<Bool>) {
        self.framework = framework
        self.isShowingDetailView = isShowingDetailView
    }
}
