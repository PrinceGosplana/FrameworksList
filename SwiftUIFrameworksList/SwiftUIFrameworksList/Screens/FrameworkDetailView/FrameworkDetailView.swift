//
//  FrameworkDetailView.swift
//  SwiftUIFrameworksList
//
//  Created by Oleksandr Isaiev on 23.03.2024.
//

import SwiftUI

struct FrameworkDetailView: View {

    @ObservedObject var viewModel: FrameworkDetailViewModel

    var body: some View {
        VStack {
            XDismissButton(isShowingDetailView: $viewModel.isShowingDetailView.wrappedValue)
            Spacer()

            FrameworkTitleView(framework: viewModel.framework)

            Text(viewModel.framework.description)
                .font(.body)
                .padding()

            Spacer()

            Link(destination: URL(string: viewModel.framework.urlString)!, label: {
                AFButton(title: "Learn More")
            })


        }
    }
}

#Preview {
    FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework,
                                                            isShowingDetailView: .constant(false)))
}
