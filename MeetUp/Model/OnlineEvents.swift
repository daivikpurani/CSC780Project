import Foundation

struct OnlineEvent: Decodable, Identifiable {
    let id: Int
        let name: String
        let description: String
        let date: String
        let link: String
        let price: Double
        let participants: Int
        let isRecorded: Bool
        let imageURL: String
}

struct EventResponse {
    let events: [OnlineEvent]
}

struct MockEventData {
    static let sampleEvent = OnlineEvent(
        id: 1,
        name: "SwiftUI Workshop",
        description: "Learn how to build modern iOS apps using SwiftUI.",
        date: "2024-12-15",
        link: "https://example.com/swiftui-workshop",
        price: 120,
        participants: 50,
        isRecorded: true,
        imageURL: "swiftui-workshop"
    )
    
    static let eventList = [
        OnlineEvent(
            id: 10,
            name: "AI in Education",
            description: "Exploring the role of artificial intelligence in modern education.",
            date: "2024-12-18",
            link: "https://example.com/ai-education",
            price: 90,
            participants: 200,
            isRecorded: false,
            imageURL: "ai-education"
        ),
        OnlineEvent(
            id: 2,
            name: "Blockchain Basics",
            description: "Introduction to blockchain technology and its applications.",
            date: "2024-12-20",
            link: "https://example.com/blockchain-basics",
            price: 60,
            participants: 150,
            isRecorded: true,
            imageURL: "blockchain-basics"
        ),
        OnlineEvent(
            id: 3,
            name: "Web Development Bootcamp",
            description: "Build your first web application using React and Node.js.",
            date: "2024-12-22",
            link: "https://example.com/web-dev-bootcamp",
            price: 180,
            participants: 300,
            isRecorded: true,
            imageURL: "web-app-dev"
        ),
        OnlineEvent(
            id: 4,
            name: "Data Science for Beginners",
            description: "Learn the fundamentals of data science with hands-on exercises.",
            date: "2024-12-23",
            link: "https://example.com/data-science-beginners",
            price: 90,
            participants: 100,
            isRecorded: false,
            imageURL: "data-science-beginners"
        ),
        OnlineEvent(
            id: 5,
            name: "Mobile App Development Workshop",
            description: "Kickstart your journey in iOS and Android app development.",
            date: "2024-12-25",
            link: "https://example.com/mobile-app-dev",
            price: 150,
            participants: 250,
            isRecorded: true,
            imageURL: "mobile-app-dev"
        ),
        OnlineEvent(
            id: 6,
            name: "Cybersecurity Awareness Webinar",
            description: "Understand how to protect yourself and your organization online.",
            date: "2024-12-28",
            link: "https://example.com/cybersecurity-webinar",
            price: 60,
            participants: 500,
            isRecorded: false,
            imageURL: "cybersecurity-webinar"
        ),
    ]
}
