//
//  PersonalBestView.swift
//  AngelsSplit
//
//  Created by Angel Martinez on 1/20/23.
//

import SwiftUI

struct PersonalBestView: View {
    
    @State private var maxSquat = ""
    @State private var maxBench = ""
    @State private var maxDeadlift = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Squat")) {
                    TextField("Max Squat", text: $maxSquat)
                }
                Section(header: Text("Bench")) {
                    TextField("Max Bench", text: $maxBench)
                }
                Section(header: Text("Deadlift")) {
                    TextField("Max Deadlift", text: $maxDeadlift)
                }
            }
            .navigationTitle("Personal Best")
        }
    }
}

struct PersonalBestView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalBestView()
    }
}
