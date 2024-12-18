import Foundation

struct OfflineEvent: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let startTime: String
    let location: String
    let rating: Double
    let distance: String
    let endTime: String
    let imageURL: String
}

struct OfflineEventResponse {
    let request: [OfflineEvent]
}

struct MockOfflineEventData {
    static let sampleEvent = OfflineEvent(id: 1, name: "Tech Meetup", description: "A gathering for tech enthusiasts", startTime: "Starts 10 AM", location: "Tech Park Hall A", rating: 4.7, distance: "3 mi", endTime: "Ends 4 PM", imageURL: "tech-meetup")
    
    static let eventList = [
        OfflineEvent(id: 1, name: "Tech Meetup", description: "A gathering for tech enthusiasts", startTime: "Starts 10 AM", location: "Tech Park Hall A", rating: 4.7, distance: "3 mi", endTime: "Ends 4 PM", imageURL: "tech-gathering"),
        OfflineEvent(id: 2, name: "Startup Pitch Event", description: "Showcase your startup ideas", startTime: "Starts 11 AM", location: "Startup Hub Room 2", rating: 4.5, distance: "5 mi", endTime: "Ends 3 PM", imageURL: "idea-showcase"),
        OfflineEvent(id: 3, name: "AI Workshop", description: "Hands-on workshop on AI tools", startTime: "Starts 9 AM", location: "Innovation Lab B", rating: 4.8, distance: "4 mi", endTime: "Ends 2 PM", imageURL: "ai-workshop"),
        OfflineEvent(id: 4, name: "Art Fair", description: "Explore creative artworks by local artists", startTime: "Starts 8 AM", location: "City Art Center", rating: 4.6, distance: "6 mi", endTime: "Ends 5 PM", imageURL: "ai-artwork"),
        OfflineEvent(id: 5, name: "Fitness Bootcamp", description: "A fun and energetic fitness bootcamp", startTime: "Starts 7 AM", location: "Central Park Zone C", rating: 4.4, distance: "2 mi", endTime: "Ends 9 AM", imageURL: "fitness-bootcamp"),
    ]
}
