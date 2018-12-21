import UIKit


protocol Car {
    var brand: String { get }
    var creationYear: Int { get }
    var power: Double { get }
    var engineState: String { get }
    var doorState: Bool { get}
 
    func carBrand () -> String
    func carCreationYear() ->  Int
    func carPower() -> Double
}

extension Car {
    func engineInfo() -> String {
        return engineState
        print ("Door open")
        }
    func doorInfo() -> Bool {
        return true
        print ("Open door")
        false
        print ("Close door")
    }
}


class SportCars {
    var accelerationTo100: Double
    var maxSpeed: Int
    
    init (accelerationTo100: Double, maxSpeed: Int) {
        self.accelerationTo100 = accelerationTo100
        self.maxSpeed = maxSpeed
    }
}


class TrunkCars {
    var tonnage: Double
    var additionalTrailer: Bool
    
    init (tonnage: Double, additionalTrailer: Bool) {
        self.tonnage = tonnage
        self.additionalTrailer = additionalTrailer
    }
}

