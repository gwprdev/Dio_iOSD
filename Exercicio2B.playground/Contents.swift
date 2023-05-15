import UIKit
// Gilvan Wemerson
protocol Swim {
    func swimming()
}

var height = [1: "Um", 2: "Dois", 3: "Três", 4: "Quatro", 5: "Cinco", 6: "Seis", 7: "Sete", 8: "Oito", 9: "Nove", 10: "Dez"]

let selectHeight: () -> String = {
let aleatorio = Int.random(in: 1...10)
return height[aleatorio] ?? "Opção inválida"

}

// Struct Criada
struct birdStruct {
    var color: String
    var height: String
    var type: String
    var race: String
    var delegate: Swim?

    func fly() -> Void {
        print("\(race) está voando")
    }
    
    func endFly() -> Void {
        print("\(race) parou de voar e pousou em um lugar seguro")
    }
    
    mutating func nadando(){
        delegate = self
        delegate?.swimming()
    }
    
}

enum BirdTypeEnumeration: String {
    case birdofprey
    case nonpredatory
    case anseriformes

    func name() -> String{
        switch self {
        case .birdofprey:
            return "Ave de Rapina"
        case .nonpredatory:
            return "Não Predadores"
        case .anseriformes:
            return "Aves Anseriformes"
        }
    }
}

enum BirdsNameEnumeration: String {
    case hawk
    case picapau
    case blueBird
    case swallow
    case bemtevi
    case toucan
    case hen
    
    func name() -> String{
        switch self {
        case .picapau:
            return "O Pica Pau"
        case .hawk:
            return "O Gavião"
        case .blueBird:
            return "O Passaro Azul"
        case .swallow:
            return "A Andorinha"
        case .bemtevi:
            return "O Bem Te Vi"
        case .toucan:
            return "O Tucano"
        case .hen:
            return "A Galinha"
        }
    }
    
}

// Classe Criada
class BirdsClass {
    var color: String
    var height: String
    var type: String
    var race: String
    var delegate: Swim?
    
    init(color:String,height:String,type:String,race:String){
        self.color = color
        self.height = height
        self.type = type
        self.race = race
    }
    
    func fly() -> Void {
        print("\(race) está voando")
    }
    
    func endFly() -> Void {
        print("\(race) parou de voar e pousou em um lugar seguro")
    }
    
    func nadando(){
        delegate = self
        delegate?.swimming()
    }
    
}

//Classe com Herança Criada
class OtherBirds: BirdsClass {
    
    override func fly() -> Void {
        if(race == BirdsNameEnumeration.hen.name()){
            print("\(race) é um tipo de ave que não voa")
        }else{
            print("\(race) está voando")
        }
    }
    
    //Sobrecarga de método
    func fly(height: String) -> Void {
        if(race == BirdsNameEnumeration.hen.name()){
            print("\(race) é um tipo de ave que não voa")
        }else{
            print("\(race) está voando há \(height) metros de altura")
        }
    }
    
    //Sobrescrita de metodo
    override func endFly() -> Void {
        if(race == BirdsNameEnumeration.hen.name()){
            print("\(race) é um tipo de ave que não voa")
        }else{
            print("\(race) parou de voar e pousou em um lugar seguro")
        }
    }
    
    //Sobrescrita de metodo
    func hunting() -> Void{
        if(type != BirdTypeEnumeration.birdofprey.name()){
            print("\(race) é do tipo \(type), esse tipo não realiza Caça")
        }else{
            print("\(race) está caçando")
            print("\(race) finalizou a caça com sucesso")
        }
        
    }
    

    
}

var picapau = birdStruct(color: "Yellow",height: "small",type: BirdTypeEnumeration.anseriformes.name(),race: BirdsNameEnumeration.swallow.name())

let bemtevi = BirdsClass(color: "Black",height: "small",type: BirdTypeEnumeration.anseriformes.name(),race: BirdsNameEnumeration.bemtevi.name())

var gaviao = OtherBirds(color: "Brown", height: "Big", type: BirdTypeEnumeration.birdofprey.name(), race: BirdsNameEnumeration.hawk.name())

var galinha = OtherBirds(color: "White", height: "small", type: BirdTypeEnumeration.nonpredatory.name(), race: BirdsNameEnumeration.hen.name())


DispatchQueue.global().sync {
    picapau.fly()
    picapau.endFly()
    picapau.nadando()
}


DispatchQueue.global().sync {
    bemtevi.fly()
    bemtevi.endFly()
    bemtevi.nadando()
}

DispatchQueue.global().sync {
    gaviao.fly()
    gaviao.fly(height: "\(selectHeight())")
    gaviao.hunting()
    gaviao.endFly()
    gaviao.nadando()
    print("Cor do \(gaviao.race) é \(gaviao.color)")
    gaviao.color = "Gray"
    print("Agora a Cor do \(gaviao.race) é \(gaviao.color)")
}

DispatchQueue.global().sync {
    galinha.fly()
    galinha.hunting()
    galinha.endFly()
    galinha.nadando()
    
}


extension BirdsClass: Swim {
    func swimming() {
        let nameClass = String(describing: Swift.type(of: self))
        print("Classe que executou: \(nameClass) o método Nadando")
    }
}

extension birdStruct: Swim {
    func swimming() {
        let nameClass = String(describing: Swift.type(of: self))
        print("Classe que executou: \(nameClass) o método Nadando")
    }
}
