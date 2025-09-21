//
//  MoodSelectionView.swift
//  MoodChecker
//
//  Created by Damian Gwóźdź on 18/09/2025.
//
import SwiftUI

struct MoodSelectionView: View {
    @Binding var moodSelectionModel: MoodSelectionModel

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
