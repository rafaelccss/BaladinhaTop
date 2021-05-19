
class Party {
    let imageView: String
    let titleParty: String
    let hostName: String
    let eventDate: String
    let tagOne: String
    let tagTwo: String
    let tagThree: String
    var add: Bool
    
    init(imageView: String, titleParty: String, hostName: String, eventDate: String, tagOne: String, tagTwo: String, tagThree: String, add: Bool) {
        self.imageView = imageView
        self.titleParty = titleParty
        self.hostName = hostName
        self.eventDate = eventDate
        self.tagOne = tagOne
        self.tagTwo = tagTwo
        self.tagThree = tagThree
        self.add = add
    }
}
