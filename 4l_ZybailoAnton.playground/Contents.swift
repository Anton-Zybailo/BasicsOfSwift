import UIKit
// Task № 1, 2, 3, 4, 5, 6

enum CarsEngineState {
    case on, off
}
enum CarsDoorState {
    case open, close
}
enum CarsTrunkVolume {
    case empty, full
}
// General class
class Cars {
    let carsBrand: String
    let carsCreationYear: Int
    var carsPower: Double
    var carsEngineState: CarsEngineState
    var carsDoorState: CarsDoorState
    var carsTrunkVolume: CarsTrunkVolume
    static var carCount = 0
    
    init (carsBrand: String, carsCreationYear: Int, carsPower: Double, carsEngineState: CarsEngineState, carsDoorState: CarsDoorState, carsTrunkVolume: CarsTrunkVolume) {
        self.carsBrand = carsBrand
        self.carsCreationYear = carsCreationYear
        self.carsPower = carsPower
        self.carsEngineState = carsEngineState
        self.carsDoorState = carsDoorState
        self.carsTrunkVolume = carsTrunkVolume
        Cars.carCount += 1
    }
    static func countInfo () {
        print ("Total cars: \(self.carCount)")
    }
    func openDoorState() {
        carsDoorState = .open
    }
    func closeDoorState() {
        carsDoorState = .close
    }
    func infoCarsPower() {
        if carsPower >= 3 {
            print ("Powerful car! Car's power: \(carsPower)")
        } else {
            print ("Normal power. Car's power: \(carsPower)")
        }
    }
}

// First trunk subclass
enum AutomotiveAxles {
    case four, six, eight
}
class TrunkCars: Cars {
    var tonnage: Double
    var additionalTrailer: Bool
    var autumotiveAxles: AutomotiveAxles
    
    init (carsBrand: String, carsCreationYear: Int, carsPower: Double, carsEngineState: CarsEngineState, carsDoorState: CarsDoorState, carsTrunkVolume: CarsTrunkVolume, tonnage: Double, additionalTrailer: Bool, autumotiveAxles: AutomotiveAxles) {
        
        self.tonnage = tonnage
        self.additionalTrailer = additionalTrailer
        self.autumotiveAxles = autumotiveAxles
        super.init (carsBrand: carsBrand, carsCreationYear: carsCreationYear, carsPower: carsPower, carsEngineState: carsEngineState, carsDoorState: carsDoorState, carsTrunkVolume: carsTrunkVolume)
    }
    override func infoCarsPower() {
        super.infoCarsPower()
        if carsPower >= 4 {
            print ("Powerful car! Car's power: \(carsPower)")
        } else {
            print ("Normal power. Car's power: \(carsPower)")
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
class SportCars: Cars {

    var accelerationTo100: Double
    var transmission: Transmission
    var maxSpeed: Int
    var generation: Generation
    
    init (carsBrand: String, carsCreationYear: Int, carsPower: Double, carsEngineState: CarsEngineState, carsDoorState: CarsDoorState, carsTrunkVolume: CarsTrunkVolume, accelerationTo100: Double, transmission: Transmission, maxSpeed: Int, generation: Generation) {
       
        self.accelerationTo100 = accelerationTo100
        self.transmission = transmission
        self.maxSpeed = maxSpeed
        self.generation = generation
        super.init(carsBrand: carsBrand, carsCreationYear: carsCreationYear, carsPower: carsPower, carsEngineState: carsEngineState, carsDoorState: carsDoorState, carsTrunkVolume: carsTrunkVolume)
    }
    override func infoCarsPower() {
        super.infoCarsPower()
        if carsPower >= 6 {
            print ("Powerful car! Car's power: \(carsPower)")
        } else {
            print ("Normal power. Car's power: \(carsPower)")
        }
        func openDoorState() {                                  // Fix world "override"
        carsDoorState = .close
        print ("Doors are always close")
        }
    }
}

var manTrunk = TrunkCars (carsBrand: "Man 6x6", carsCreationYear: 2009, carsPower: 4, carsEngineState: .on, carsDoorState: .open, carsTrunkVolume: .empty, tonnage: 15, additionalTrailer: false, autumotiveAxles: .four)

var volvoTrunk = TrunkCars (carsBrand: "Volvo Truck", carsCreationYear: 2015, carsPower: 6, carsEngineState: .on, carsDoorState: .close, carsTrunkVolume: .full, tonnage: 24, additionalTrailer: true, autumotiveAxles: .six)

var porsheSport = SportCars (carsBrand: "Porshe 911", carsCreationYear: 2018, carsPower: 6, carsEngineState: .on, carsDoorState: .close, carsTrunkVolume: .empty, accelerationTo100: 5.7, transmission: .automatic, maxSpeed: 240, generation: .third)

var mersedesSport = SportCars (carsBrand: "Mersedes S-class AMG", carsCreationYear: 2015, carsPower: 8, carsEngineState: .on, carsDoorState: .close, carsTrunkVolume: .empty, accelerationTo100: 4.9, transmission: .automatic, maxSpeed: 280, generation: .second)

var gazelTrunk = TrunkCars (carsBrand: "Gazel Next", carsCreationYear: 2014, carsPower: 2, carsEngineState: .on, carsDoorState: .open, carsTrunkVolume: .full, tonnage: 8, additionalTrailer: false, autumotiveAxles: .four)

var audiSport = SportCars (carsBrand: "Audi RS-8", carsCreationYear: 2016, carsPower: 8, carsEngineState: .on, carsDoorState: .close, carsTrunkVolume: .empty, accelerationTo100: 4.1, transmission: .automatic, maxSpeed: 300, generation: .second)

var teslaSport = SportCars (carsBrand: "Tesla Space-X", carsCreationYear: 2018, carsPower: 2, carsEngineState: .on, carsDoorState: .close, carsTrunkVolume: .empty, accelerationTo100: 3.9, transmission: .automatic, maxSpeed: 220, generation: .first)

print ("All cars: \(Cars.carCount)")

print ("Tonnage: 1.\(manTrunk.carsBrand): \(manTrunk.tonnage), 2. \(volvoTrunk.carsBrand): \(volvoTrunk.tonnage), 3. \(gazelTrunk.carsBrand): \(gazelTrunk.tonnage).")

mersedesSport.infoCarsPower()
teslaSport.infoCarsPower()

print ("Acceleration to 100: 1. \(porsheSport.carsBrand): \(porsheSport.accelerationTo100)sec; 2. \(mersedesSport.carsBrand): \(mersedesSport.accelerationTo100)sec; 3. \(audiSport.carsBrand): \(audiSport.accelerationTo100)sec; 4. \(teslaSport.carsBrand): \(teslaSport.accelerationTo100)sec. ")

manTrunk.tonnage = 17
mersedesSport.accelerationTo100 = 3.8
teslaSport.accelerationTo100 = 2.5
audiSport = porsheSport

print ("All cars: \(Cars.carCount)")

print ("Tonnage: 1.\(manTrunk.carsBrand): \(manTrunk.tonnage), 2. \(volvoTrunk.carsBrand): \(volvoTrunk.tonnage), 3. \(gazelTrunk.carsBrand): \(gazelTrunk.tonnage).")

print ("Acceleration to 100: 1. \(porsheSport.carsBrand): \(porsheSport.accelerationTo100)sec; 2. \(mersedesSport.carsBrand): \(mersedesSport.accelerationTo100)sec; 3. \(audiSport.carsBrand): \(audiSport.accelerationTo100)sec; 4. \(teslaSport.carsBrand): \(teslaSport.accelerationTo100)sec. ")
