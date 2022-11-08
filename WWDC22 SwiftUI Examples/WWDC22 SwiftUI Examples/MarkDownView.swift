//
//  MarkDownView.swift
//  WWDC22 SwiftUI Examples
//
//  Created by Eduard Caziuc on 08.11.2022.
//

import SwiftUI

struct MarkDownView: View {
    var body: some View {
        Text(
            """
            This is how you make bold text **bold text**.
            Another one __bold text__.
            Italicized text is the *cat's meow*.
            Italicized text is the _cat's meow_.
            Important __*really important*__.
            This text is **_really important_**.
            
            
            At the command prompt, type `nano`.
            ``Use `code` in your Markdown file.``
            My favorite search engine is [Google](https://google.com).
            
            I love supporting the **[EFF](https://eff.org)**.
            This is the *[Markdown Guide](https://www.markdownguide.org)*.
            See the section on [`code`](#code).
            
            <https://www.markdownguide.org>
            <john.appleseed@apple.com>
            
            
            ~~Testing Text~~
            
            """
        )
    }
}

struct MarkDownView_Previews: PreviewProvider {
    static var previews: some View {
       MarkDownView()
    }
}
