
    struct User {
        var name: String
        var email: String?
        var followers: Int
        var isActive: Bool
        
        init(name: String, email: String?, followers: Int, isActive: Bool) {
            
            self.name = name
            self.email = email
            self.followers = followers
            self.isActive = isActive
        }
        
        func logStatus() {
            
            if self.isActive == true {
                print("\(name) is working hard!")
                
            } else {
                
                print("\(name) has left earth!")
            }
            
        }
        
        
    }
    
    var userRichard = User(name: "Richard", email: nil, followers: 0, isActive: false)
    userRichard.logStatus()
    
