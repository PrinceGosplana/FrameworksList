//
//  FrameworkTitleView.swift
//  SwiftUIFrameworksList
//
//  Created by Oleksandr Isaiev on 23.03.2024.
//

import SwiftUI

struct FrameworkTitleView: View {

    let framework: Framework

    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundStyle(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
