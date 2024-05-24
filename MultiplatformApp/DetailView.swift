//
//  DetailView.swift
//  MultiplatformApp
//
//  Created by Bruno Oliveira on 24/05/24.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var dataController: DataController
    let smartFilters: [Filter] = [.all, .recent]
    var body: some View {
        Text("DetailView!")
    }
}

#Preview {
    DetailView()
}
