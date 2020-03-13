import UIKit

var str = "Hello, playground"



class Carro {
    var name: String?
    weak var pessoa: Pessoa?
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("Carro Sumindo")
    }
}

class Pessoa {
    var name: String?
    var carro: Carro?
    
    init(name: String, carro: Carro) {
        self.name = name
        self.carro = carro
    }
    
    deinit {
        print("Pessoa sumindo")
    }
}






var carro1: Carro?  = Carro(name: "j")
carro1?.pessoa = Pessoa(name: "jija", carro: carro1!)
carro1 = nil
carro1?.pessoa = nil


print (carro1)
