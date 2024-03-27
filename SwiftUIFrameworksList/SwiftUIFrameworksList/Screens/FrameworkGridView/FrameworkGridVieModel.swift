//
//  FrameworkGridVieModel.swift
//  SwiftUIFrameworksList
//
//  Created by Oleksandr Isaiev on 23.03.2024.
//

import SwiftUI

final class FrameworkGridVieModel: ObservableObject {

    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }

    @Published var isShowingDetailView = false

    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}

