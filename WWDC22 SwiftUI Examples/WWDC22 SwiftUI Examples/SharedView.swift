//
//  SharedView.swift
//  WWDC22 SwiftUI Examples
//
//  Created by Eduard Caziuc on 08.11.2022.
//

import SwiftUI

struct SharedView: View {
    var body: some View {
        let link = URL(string: "https://www.hackingwithswift.com")!

        VStack(spacing: 20) {
            ShareLink(item: link)
            ShareLink("Learn Swift here", item: link)
            ShareLink(item: link) {
                Label("Learn Swift here", systemImage: "swift")
            }
            ShareLink(
                item: link,
                preview: SharePreview(
                    "Switzerland's flag: it's a big plus.",
                    image: Image(systemName: "plus")
                )
            )
        }
    }
}

struct SharedView_Previews: PreviewProvider {
    static var previews: some View {
        SharedView()
    }
}
