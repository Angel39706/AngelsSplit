//
//  SplitListView.swift
//  AngelsSplit
//
//  Created by Angel Martinez on 1/20/23.
//

import SwiftUI

struct SplitListView: View {
    
    @State private var splits: [Split] = []
    
    var body: some View {
        NavigationView {
            List(splits, id: \.id){ split in
                VStack(alignment: .leading, spacing: 10) {
                    HStack{
                        Text(split.day)
                        Text(split.info)
                    }
                    .font(.headline)
                    
                    Text(split.description)
                        .foregroundColor(Color("brandPrimary"))
                        .fontWeight(.semibold)
                }
            }
            .navigationTitle("PPL 🏋🏼")
            .listStyle(.inset)
        }
        .onAppear{
            getsplits()
        }
        
    }
    
    func getsplits() {
        NetworkManager.shared.getSplit { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let splits):
                    self.splits = splits
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}

struct SplitListView_Previews: PreviewProvider {
    static var previews: some View {
        SplitListView()
    }
}
