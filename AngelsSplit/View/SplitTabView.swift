//
//  ContentView.swift
//  AngelsSplit
//
//  Created by Angel Martinez on 12/19/22.
//

import SwiftUI

struct SplitTabView: View {
    var body: some View {
        TabView {
            SplitListView()
                .tabItem{
                    Image(systemName: "brain.head.profile")
                    Text("Routine")
                }
            PersonalBestView()
                .tabItem{
                    Image(systemName: "heart")
                    Text("Personal Best !")
                }
        }
        .accentColor(Color("brandPrimary"))
    }
}
struct SplitTabView_Previews: PreviewProvider {
    static var previews: some View {
        SplitTabView()
    }
}
