//
//  FrameworkGridView.swift
//  SwiftUIFrameworksList
//
//  Created by Oleksandr Isaiev on 22.03.2024.
//

import SwiftUI

struct FrameworkGridView: View {

    @StateObject var viewModel = FrameworkGridVieModel()

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: viewModel.selectedFramework!, isShowingDetailView: $viewModel.isShowingDetailView))
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}
