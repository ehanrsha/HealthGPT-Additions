//
// This source file is part of the Stanford HealthGPT project
//
// SPDX-FileCopyrightText: 2023 Stanford University & Project Contributors (see CONTRIBUTORS.md)
//
// SPDX-License-Identifier: MIT
//

import Foundation

/// A bank of sample queries that demonstrate HealthGPT's capabilities to new users.
/// These are displayed as tappable suggestions on the empty chat screen.
enum SampleQueries {
    /// All available sample queries. Each should be a natural-language question
    /// that HealthGPT can answer using the 14-day Apple Health data it has access to.
    static let all: [String] = [
        "How have my step counts been trending this week?",
        "Did I get enough sleep last night?",
        "What's my average resting heart rate over the past two weeks?",
        "How many calories did I burn yesterday?",
        "Am I exercising enough based on my recent activity?",
        "Compare my sleep this week to last week.",
        "What day did I walk the most steps recently?",
        "How can I improve my sleep schedule?",
        "Is my heart rate in a healthy range?",
        "Give me a summary of my health over the past week.",
        "How many minutes of exercise did I get today?",
        "What trends do you see in my body weight?",
        "Am I meeting the recommended daily step goal?",
        "How does my active energy compare day to day?",
        "What health habits should I focus on improving?"
    ]

    /// Returns a random sample query from the bank.
    static func random() -> String {
        all.randomElement() ?? all[0]
    }

    /// Returns a random sample query, excluding the given query (for cycling without repeats).
    static func random(excluding current: String) -> String {
        let filtered = all.filter { $0 != current }
        return filtered.randomElement() ?? all[0]
    }
}
