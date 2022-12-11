import Foundation
class Animal{
    var name : String
    init(n:String){
        name=n
    }
}

class Human:Animal{
    func code(){
        print("Typing away....")
    }
}

class Fish:Animal{
    func breatheUnderWater(){
        print("Breathing under water")
    }
}

              let angela = Human(n: "Angela")
              let jack = Human(n: "Jack")
              let nemo = Fish(n: "Nemo")
              let num = 12
                
let num2 : NSNumber = 35
let word : NSString = "Swapnil"

let neighbours = [angela,jack,nemo]

//let neighbours:[Any] = [angela,jack,nemo,num]

//let neighbours : [AnyObject] = [angela,jack,nemo,num] //Anyobject will only allow that are derived from classes since num is Int which is a struct this will not allow
//let neighbours : [AnyObject] = [angela,jack,nemo]

//let neighbours : [NSObject] = [num2,word]
//will only allow instances from NSObject (Apple specific foundation)

func findNemo(from animals:[Animal]){
    for animal in animals{
        if animal is Fish{
            print(animal.name)
            //forced downcasting using 'as'
            let fish = animal as! Fish
            fish.breatheUnderWater()
            let animalFish = fish as Animal
            //casting it to superclass
        }
    }
}

findNemo(from: neighbours)

if let fish = neighbours[1] as? Fish{
    fish.breatheUnderWater()
}else{
    print("casting has failed")
}


//'as' keyword is used for upcasting
