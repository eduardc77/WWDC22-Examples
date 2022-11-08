//
//  DraggableView.swift
//  WWDC22 SwiftUI Examples
//
//  Created by Eduard Caziuc on 08.11.2022.
//

import SwiftUI

struct DraggableView: View {
    @State var image = Image(systemName: "person.crop.circle")
    
    var body: some View {
        ProfileView(image: image)
            .draggable(image)
            .dropDestination(for: Image.self) { items, location in
                if let image = items.first {
                    self.image = image
                    return true
                } else {
                    return false
                }
            }
            .toolbar {
                PasteButton(payloadType: Image.self) { items in
                    if let image = items.first {
                        self.image = image
                    }
                }
                .buttonBorderShape(.capsule)
            }
    }
}

struct DraggableView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DraggableView()
                .navigationTitle("Hello")
        }
    }
}

struct ProfileView: View {
    let image: Image
    var body: some View {
        VStack {
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 72, height: 72)
                .clipShape(Circle())
            VStack {
                Text("John Doe")
                    .font(.title)
                    .fontWeight(.medium)
                Text("iOS Developer")
            }
        }
    }
}
