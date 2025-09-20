//
//  ContentView.swift
//  MoodChecker
//
//  Created by Damian Gwóźdź on 17/09/2025.
//

import SwiftUI
 


struct StartView: View {
    @State private var isPresented: Bool = false
    var body: some View {
        VStack {
            Text("Mood Checker App")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom)
            Button("Check my mood") {
                isPresented.toggle()
            }
            .sheet(isPresented: $isPresented) {
                MoodSelectionView(moodSelectionModel: .constant(.init()))
            }
        }
        .padding()
    }
}

#Preview {
    StartView()
}
