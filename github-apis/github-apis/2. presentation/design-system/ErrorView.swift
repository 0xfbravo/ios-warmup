//
//  ErrorView.swift
//  github-apis
//
//  Created by 0xf on 20/08/23.
//

import SwiftUI

struct ErrorView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Sorry, we're unable to load this source.")
        }
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView()
    }
}
