//
//  MoodSelectionView.swift
//  MoodChecker
//
//  Created by Damian Gwóźdź on 18/09/2025.
//
import SwiftUI

func getView() -> some View {
    return VStack {
        Text("Mood Checker App")
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.bottom)
        Button("Check my mood") {
            
        }
    }
}

var selectedMood: Mood?

struct MoodSelectionView: View {
    @Binding var moodSelectionModel: MoodSelectionModel
    //var body: some View = getView()

    @State private var isPresented = false
    var body: some View {
        ForEach(moodSelectionModel.moodList, id:\.self) { mood in
            Button(mood.rawValue) {
                moodSelectionModel.selectedMood = mood
                isPresented.toggle()
            }
            .sheet(isPresented: $isPresented) {
               MoodResultView(moodSelectionModel: moodSelectionModel)
            }
        }
    
    }
}

#Preview {
    MoodSelectionView(moodSelectionModel: .constant(.init()))
}
