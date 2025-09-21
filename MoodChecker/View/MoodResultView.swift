//
//  MoodResultView.swift
//  MoodChecker
//
//  Created by Damian Gwóźdź on 18/09/2025.
//
import SwiftUI

struct MoodResultView: View {
    let moodSelectionModel: MoodSelectionModel
    
    //var moodResultModel: MoodResultModel!
    var body: some View {
        Text(moodSelectionModel.selectedMood.advice)
    }
}

#Preview {
    MoodResultView(moodSelectionModel: .init())
}
