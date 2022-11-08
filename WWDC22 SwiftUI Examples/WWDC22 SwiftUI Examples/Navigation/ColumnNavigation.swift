//
//  ColumnNavigation.swift
//  WWDC22 SwiftUI Examples
//
//  Created by Eduard Caziuc on 08.11.2022.
//

import SwiftUI

struct OldColumnNavigationView: View {
    var body: some View {
        NavigationView {
            Text("Sidebar")
            Text("Content")
            Text("Detail")
        }
    }
}

struct NewColumnNavigationView: View {
    var body: some View {
        NavigationSplitView {
            Text("Sidebar")
        } content: {
            Text("Content")
        } detail: {
            Text("Detail")
        }
    }
}

struct OldColumnNavigation_Previews: PreviewProvider {
    static var previews: some View {
        OldColumnNavigationView()
    }
}

struct NewColumnNavigation_Previews: PreviewProvider {
    static var previews: some View {
        NewColumnNavigationView()
    }
}
