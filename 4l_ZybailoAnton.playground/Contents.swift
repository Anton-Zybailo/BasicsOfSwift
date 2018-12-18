import UIKit
// Task № 1, 2, 3, 4, 5, 6

enum CarEngineState {
    case on, off
}
enum CarDoorState {
    case open, close
}
enum CarTrunkVolume {
    case empty, full
}
// General class
class Car {
    let brand: String
    let creationYear: Int
    var power: Double
    var engineState: CarEngineState
    var doorState: CarDoorState
    var trunkVolume: CarTrunkVolume
    static var carCount = 0
    
    init (brand: String, creationYear: Int, power: Double, engineState: CarEngineState, doorState: CarDoorState, trunkVolume: CarTrunkVolume) {
        self.brand = brand
        self.creationYear = creationYear
        self.power = power
        self.engineState = engineState
        self.doorState = doorState
        self.trunkVolume = trunkVolume
        Car.carCount += 1
    }
    static func countInfo () {
        print ("Total cars: \(self.carCount)")
    }
    func openDoorState() {
        doorState = .open
    }
    func closeDoorState() {
        doorState = .close
    }
    func infoCarsPower() {
        if power >= 3 {
            print ("Powerful car! Car's power: \(power)")
        } else {
            print ("Normal power. Car's power: \(power)")
        }
    }
}

// First trunk subclass
enum AutomotiveAxles {
    case four, six, eight
}
class TrunkCars: Car {
    var tonnage: Double
    var additionalTrailer: Bool
    var autumotiveAxles: AutomotiveAxles
    
    init (brand: String, creationYear: Int, power: Double, engineState: CarEngineState, doorState: CarDoorState, trunkVolume: CarTrunkVolume, tonnage: Double, additionalTrailer: Bool, autumotiveAxles: AutomotiveAxles) {
        
        self.tonnage = tonnage
        self.additionalTrailer = additionalTrailer
        self.autumotiveAxles = autumotiveAxles
        super.init (brand: brand, creationYear: creationYear, power: power, engineState: engineState, doorState: doorState, trunkVolume: trunkVolume)
    }
    override func infoCarsPower() {
        super.infoCarsPower()
        if power >= 4 {
            print ("Powerful car! Car's power: \(power)")
        } else {
            print ("Normal power. Car's power: \(power)")
        }
    }
}

// Second sport subclass
enum Transmission {
    case manual, automatic
}
enum Generation {
    case first, second, third
}
class SportCars: Car {

    var accelerationTo100: Double
    var transmission: Transmission
    var maxSpeed: Int
    var generation: Generation
    
    init (brand: String, creationYear: Int, power: Double, engineState: CarEngineState, doorState: CarDoorState, trunkVolume: CarTrunkVolume, accelerationTo100: Double, transmission: Transmission, maxSpeed: Int, generation: Generation) {
       
        self.accelerationTo100 = accelerationTo100
        self.transmission = transmission
        self.maxSpeed = maxSpeed
        self.generation = generation
        super.init (brand: brand, creationYear: creationYear, power: power, engineState: engineState, doorState: doorState, trunkVolume: trunkVolume)
    }
    override func infoCarsPower() {
        super.infoCarsPower()
        if power >= 6 {
            print ("Powerful car! Car's power: \(power)")
        } else {
            print ("Normal power. Car's power: \(power)")
        }
    }
    override func openDoorState() {
        doorState = .close
        print ("Doors are always close")
        }
}

var manTrunk = TrunkCars (brand: "Man 6x6", creationYear: 2009, power: 4, engineState: .on, doorState: .open, trunkVolume: .empty, tonnage: 15, additionalTrailer: false, autumotiveAxles: .four)

var volvoTrunk = TrunkCars (brand: "Volvo Truck", creationYear: 2015, power: 6, engineState: .on, doorState: .close, trunkVolume: .full, tonnage: 24, additionalTrailer: true, autumotiveAxles: .six)

var porsheSport = SportCars (brand: "Porshe 911", creationYear: 2018, power: 6, engineState: .on, doorState: .close, trunkVolume: .empty, accelerationTo100: 5.7, transmission: .automatic, maxSpeed: 240, generation: .third)

var mersedesSport = SportCars (brand: "Mersedes S-class AMG", creationYear: 2015, power: 8, engineState: .on, doorState: .close, trunkVolume: .empty, accelerationTo100: 4.9, transmission: .automatic, maxSpeed: 280, generation: .second)

var gazelTrunk = TrunkCars (brand: "Gazel Next", creationYear: 2014, power: 2, engineState: .on, doorState: .open, trunkVolume: .full, tonnage: 8, additionalTrailer: false, autumotiveAxles: .four)

var audiSport = SportCars (brand: "Audi RS-8", creationYear: 2016, power: 8, engineState: .on, doorState: .close, trunkVolume: .empty, accelerationTo100: 4.1, transmission: .automatic, maxSpeed: 300, generation: .second)

var teslaSport = SportCars (brand: "Tesla Space-X", creationYear: 2018, power: 2, engineState: .on, doorState: .close, trunkVolume: .empty, accelerationTo100: 3.9, transmission: .automatic, maxSpeed: 220, generation: .first)

print ("All cars: \(Car.carCount)")

print ("Tonnage: 1.\(manTrunk.brand): \(manTrunk.tonnage), 2. \(volvoTrunk.brand): \(volvoTrunk.tonnage), 3. \(gazelTrunk.brand): \(gazelTrunk.tonnage).")

mersedesSport.infoCarsPower()
teslaSport.infoCarsPower()

print ("Acceleration to 100: 1. \(porsheSport.brand): \(porsheSport.accelerationTo100)sec; 2. \(mersedesSport.brand): \(mersedesSport.accelerationTo100)sec; 3. \(audiSport.brand): \(audiSport.accelerationTo100)sec; 4. \(teslaSport.brand): \(teslaSport.accelerationTo100)sec. ")

manTrunk.tonnage = 17
mersedesSport.accelerationTo100 = 3.8
teslaSport.accelerationTo100 = 2.5
audiSport = porsheSport

print ("All cars: \(Car.carCount)")

print ("Tonnage: 1.\(manTrunk.brand): \(manTrunk.tonnage), 2. \(volvoTrunk.brand): \(volvoTrunk.tonnage), 3. \(gazelTrunk.brand): \(gazelTrunk.tonnage).")

print ("Acceleration to 100: 1. \(porsheSport.brand): \(porsheSport.accelerationTo100)sec; 2. \(mersedesSport.brand): \(mersedesSport.accelerationTo100)sec; 3. \(audiSport.brand): \(audiSport.accelerationTo100)sec; 4. \(teslaSport.brand): \(teslaSport.accelerationTo100)sec. ")
