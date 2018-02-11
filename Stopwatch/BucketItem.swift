import Foundation

class BucketItem {
    

    var name: String = ""
    var latitude: Double
    var longitude: Double
    var description: String = ""
    var dueDate: Date

    
    init(name: String, latitude: Double, longitude: Double, description: String, dueDate: Date) {
        self.name = name
        self.latitude = latitude
        self.longitude = longitude
        self.description = description
        self.dueDate = dueDate
    }
    
}
