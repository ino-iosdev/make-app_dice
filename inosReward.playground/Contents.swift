class myCodingLife {
    
    var dailyHustleHour = 12
    var snacks = ""
    var beautifulThings = ""
    
    func reward() {
        
        print("Ino's working so hard, please reward her with \(snacks)")
    }
    
    func moreReward() {
        
        print ("Ino's hustling so hard, please give her \(beautifulThings)")
    }
    
}

var inoCoding:myCodingLife = myCodingLife()
inoCoding.snacks = "chocolate"
inoCoding.beautifulThings = "flowers and shit"
inoCoding.moreReward()
inoCoding.reward()

