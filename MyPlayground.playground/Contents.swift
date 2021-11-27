import UIKit

class Animals {
    var name :String
    var helth = 100
    
    init(name :String ){
        self.name=name
  }
    
    func displayHealth (){
        print("Animals name is \(self.name) and its helth \(helth) ")
}
}

class Cat : Animals {
   
    func growl (){
        print("Rawr!")
    }
    
    override init(name: String) {
        super.init(name: name)
        helth = 150
    }
    
    func run (){
        print("Running")
        helth -= 10
    }
}


class Cheetah :Cat{
    
    override func run() {
       print("Running Fast")
        helth -= 50
        
        if helth == 0 {
            print("cannot run")
        }
    }
    
    func sleep (){
        if helth < 200 {
            helth += 50
        }
    }
}

class Lion :Cat {
    
     override func growl() {
        print("ROAR!!!! I am the King of the Jungle")
    }
    
    override init(name: String) {
        super.init(name: name)
        helth = 200
    }
}

var a1 : Cheetah = Cheetah(name: "cheetah ")
a1.sleep()
a1.displayHealth()
a1.run()
a1.run()
a1.run()
a1.run()

var a2 : Lion = Lion(name: "Loin")
a2.run()
a2.run()
a2.run()
a2.growl()






