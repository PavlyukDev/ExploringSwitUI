//
//  AspectRatioLayout.swift
//  ThinkingSwiftUI
//
//  Created by Vitalii Pavliuk on 2024-08-16.
//

import SwiftUI

struct AspectRatioLayout: View {
    var body: some View {
        VStack {
            Text("FIT")
                .bold()
            Group {
                Color.random
                    .aspectRatio(4/3, contentMode: .fit)
            }
            .frame(width: 25, height: 50)
            .border(Color.black, width: 1)
            Group {
                Color.random
                    .aspectRatio(4/3, contentMode: .fit)
            }
            .frame(width: 50, height: 50)
            .border(Color.black, width: 1)
            Group {
                Color.random
                    .aspectRatio(4/3, contentMode: .fit)
            }
            .frame(width: 100, height: 50)
            .border(Color.black, width: 1)
            Text("FILL")
                .bold()
            Group {
                Color.random
                    .aspectRatio(4/3, contentMode: .fill)
            }
            .frame(width: 25, height: 50)
            .border(Color.black, width: 1)
            Group {
                Color.random
                    .aspectRatio(4/3, contentMode: .fill)
            }
            .frame(width: 50, height: 50)
            .border(Color.black, width: 1)
            Group {
                Color.random
                    .aspectRatio(4/3, contentMode: .fill)
            }
            .frame(width: 100, height: 50)
            .border(Color.black, width: 1)
        }
    }
}

#Preview {
    AspectRatioLayout()
}
