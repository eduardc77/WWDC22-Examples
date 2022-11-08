//
//  ViewFit.swift
//  WWDC22 SwiftUI Examples
//
//  Created by Eduard Caziuc on 08.11.2022.
//

import SwiftUI

struct ViewFit: View {

    @State private var width: CGFloat = 1000
    var colors: [CGFloat] = [100, 150, 200, 1000]

    var body: some View {
        VStack(spacing: 32) {
            ChildView()
                .frame(width: width)
            Picker("", selection: $width) {
                ForEach(colors, id: \.self) {
                    Text($0.description)
                }
            }
            .pickerStyle(.segmented)
            .padding()
        }
    }
}

struct ChildView: View {
    var body: some View {
        ViewThatFits(in: .horizontal) {
            // First View
            HStack{
                contactView
                Text("John Doe Appleseed")
                    .fixedSize(horizontal: true, vertical: false)
            }
            // Second View
            HStack{
                contactView
                Text("John Doe")
                    .fixedSize(horizontal: true, vertical: false)
            }
            // Third View
            HStack {
                contactView
                Text ("John")
                    .fixedSize(horizontal: true, vertical: false)
            }
            
            contactView
        }
    }
    
    var contactView: some View {
        ZStack {
            Circle()
                .frame(width: 44, height: 44)
            Text("JD")
                .foregroundColor(.white)
        }
    }
}

struct ViewFit_Previews: PreviewProvider {
    static var previews: some View {
        ViewFit()
    }
}
