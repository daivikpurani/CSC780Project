import Foundation

extension Date {
    
    var today: Date {
        Calendar.current.date(byAdding: .year, value: 0, to: Date())!
    }
    
    
    var oneHundredTenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}
