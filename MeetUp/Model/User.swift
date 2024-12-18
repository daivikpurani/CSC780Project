import Foundation

struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate = Date()
    var wantsReminders   = false
    var wantsNotifications = false
}
