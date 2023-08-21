//
//  UserHeaderView.swift
//  github-apis
//
//  Created by 0xf on 20/08/23.
//

import SwiftUI
import Kingfisher

struct UserHeaderView: View {
    private let avatarUrl: String
    private let name: String
    private let bio: String

    init(avatarUrl: String, name: String, bio: String) {
        self.avatarUrl = avatarUrl
        self.name = name
        self.bio = bio
    }

    var body: some View {
        ZStack {
            Color("Primary").ignoresSafeArea()
            VStack(spacing: 4) {
                KFImage(URL(string: avatarUrl))
                    .fade(duration: 0.2)
                    .resizable()
                    .frame(width: 80, height: 80)
                    .scaledToFill()
                    .imageScale(.small)
                    .cornerRadius(40)
                    .overlay {
                        RoundedRectangle(cornerRadius: 40).stroke(Color("Secondary"), lineWidth: 2)
                    }
                Text(self.name)
                    .font(.headline)
                    .foregroundColor(.white)
                    .bold()
                if !bio.isEmpty {
                    Text(self.bio)
                        .font(.footnote)
                        .foregroundColor(.white)
                        .opacity(0.7)
                }
            }
        }
        .frame(height: 160)
        .padding([.leading, .trailing], 8)
    }
}

struct UserHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        UserHeaderView(
            avatarUrl: "https://media.licdn.com/dms/image/D4D03AQHyr_bI3s5Kxw/profile-displayphoto-shrink_400_400/0/1686760644461?e=1698278400&v=beta&t=e_XvZgMhlKWn_OXDAhPsR-exOMk4H7Sj9GUzCPGLzX0",
            name: "Fellipe Bravo",
            bio: "Eu sou apenas um rapaz latino-americano"
        )
    }
}
