//
//  MoodSelectionModel.swift
//  MoodChecker
//
//  Created by Damian Gwóźdź on 18/09/2025.
//
import SwiftUI

enum Mood: String, CaseIterable {
    case happy
    case sad
    case angry
    case neutral
    case tired

    var advice: String {
        switch self { // todo: instead of hard-coded string get advice from advices pool
        case .happy:
            return "advice for happy"
        case .sad:
            return "advice for sad"
        case .angry:
            return "advice for angry"
        case .neutral:
            return "advice for neutral"
        case .tired:
            return "advice for tired"
        }
    }
}

final class MoodSelectionModel: ObservableObject {
    @Published var isMoodSelected: Bool
    var selectedMood: Mood
    let moodList: [Mood] = [.happy, .sad, .angry, .neutral, .tired]
    
    init() {
        self.isMoodSelected = false
        self.selectedMood = .neutral
    }
}
