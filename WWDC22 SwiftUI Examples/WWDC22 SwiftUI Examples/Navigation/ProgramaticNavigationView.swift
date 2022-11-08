//
//  ProgramaticNavigationView.swift
//  WWDC22 SwiftUI Examples
//
//  Created by Eduard Caziuc on 08.11.2022.
//

import SwiftUI

struct User: Identifiable, Hashable {
    let name: String
    var id: String { name }
}

struct UserView: View {
    let user: User
    let pop: () -> Void

    var body: some View {
        Text(user.name)
        Button("Pop", action: pop)
            .buttonStyle(.borderedProminent)
    }
}

struct ProgramaticNavigationView: View {
    @State private var path: [User] = []
    @State private var users: [User] = [
        .init(name: "John")
    ]

    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(users) { user in
                    NavigationLink(user.name, value: user)
                }

            }
            .navigationTitle("Users")
            .navigationDestination(for: User.self) { user in
                UserView(user: user, pop: {
                    path.removeAll(where: { $0 == user })
                })
                .navigationTitle(user.name)
            }
        }
        .onAppear {
            path.append(
                contentsOf: [
                    .init(name: "John"),
                    .init(name: "Doe"),
                    .init(name: "Appleseed")
                ]
            )
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        ProgramaticNavigationView()
    }
}
