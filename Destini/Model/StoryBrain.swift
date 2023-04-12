//
//  StoryBrain.swift
//  Destini
//
//  Created by Andrey on 12.04.2023.
//

import Foundation

struct StoryBrain {
    
    let stories = [
        Story(
            title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
            choice1: (text: "I'll hop in. Thanks for the help!", choiceDestination: 2),
            choice2: (text: "Better ask him if he's a murderer first.", choiceDestination: 1)
        ),
        Story(
            title: "He nods slowly, unfazed by the question.",
            choice1: (text: "At least he's honest. I'll climb in.", choiceDestination: 2),
            choice2: (text: "Wait, I know how to change a tire.", choiceDestination: 3)
        ),
        Story(
            title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            choice1: (text: "I love Elton John! Hand him the cassette tape.", choiceDestination: 5),
            choice2: (text: "It's him or me! You take the knife and stab him.", choiceDestination: 4)
        ),
        Story(
            title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
            choice1: (text: "The", choiceDestination: 0),
            choice2: (text: "End", choiceDestination: 0)
        ),
        Story(
            title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            choice1: (text: "The", choiceDestination: 0),
            choice2: (text: "End", choiceDestination: 0)
        ),
        Story(
            title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
            choice1: (text: "The", choiceDestination: 0),
            choice2: (text: "End", choiceDestination: 0)
        )
    ]
    
    var actualStory = 0
    
    func getStoryText() -> String {
        return stories[actualStory].title
    }
    
    func getButtonsText() -> (button1: String, button2: String) {
        return (stories[actualStory].choice1.text, stories[actualStory].choice2.text)
    }
    
    mutating func nextStory(answer ans: Int) {
        if ans == 1 {
            actualStory = stories[actualStory].choice1.choiceDestination
        } else if ans == 2 {
            actualStory = stories[actualStory].choice2.choiceDestination
        }
    }
}
