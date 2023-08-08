//
//  PersonalBestView.swift
//  AngelsSplit
//
//  Created by Angel Martinez on 1/20/23.
//

import SwiftUI

struct PersonalBestView: View {
    @State private var maxSquat:  String = UserDefaults.standard.string(forKey: "squat_key") ?? ""
    @State private var maxBench:  String = UserDefaults.standard.string(forKey: "bench_key") ?? ""
    @State private var maxDeadlift: String = UserDefaults.standard.string(forKey: "deadlift_key") ?? ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Max Squat")) {
                    TextField("Max Squat", text: $maxSquat)
                        .onChange(of: maxSquat) { newValue in
                            UserDefaults.standard.set(newValue, forKey: "squat_key")
                        }
                }
                Section(header: Text("Max Bench")) {
                    TextField("Max Bench", text: $maxBench)
                        .onChange(of: maxBench) { newValueTwo in
                            UserDefaults.standard.set(newValueTwo, forKey: "bench_key")
                        }
                }
                Section(header: Text("Max Deadlift")) {
                    TextField("Max Deadlift", text: $maxDeadlift)
                        .onChange(of: maxDeadlift) { newValueThree in
                            UserDefaults.standard.set(newValueThree, forKey: "deadlift_key")
                        }
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
