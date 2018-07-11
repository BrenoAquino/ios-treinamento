import UIKit

// Criar variavel
var str = "O valor de pi é: "

// Criar constante
let pi: Int = Int(3.1415)

// Modos de printar
print(str, pi)
print(str + String(pi))
print("O valor de pi é: \(pi) + \(pi) = 2 * \(pi)")

// Criar Tupla
let piWithLegend: (legenda: String, value: Double) = (legenda: "O valor de pi é:", value: 3.1415)
print(piWithLegend.legenda, piWithLegend.value)

// Optionals
var nome: Int!

var pi1: Float = 3.14
var pi2: Float?
pi2 = 3.14

pi1 = pi2!

// Tupla com Optional
var pessoa: (nome: String, idade: Int)?
pessoa = (nome: "Breno Aquino", idade: 21)
print(pessoa!.nome, pessoa!.idade)

// Array
var idades: [Int] = []
idades.append(19)
idades.append(20)
idades.append(21)
print("Count: \(idades.count)")
print("idade[0] = \(idades[0])")
print("Empty = \(idades.isEmpty)")
print("Last Value = \(idades.last ?? 0)")

// Variantes de vetor com Optiosnal
var idades2: [Int?] = []
var idades3: [Int?]?
var idades4: [Int]?

// Array de Tuplas
var pessoas: [(nome: String, idade: Int?)] = [(nome: "NATI", idade: 45)]
pessoas.append((nome: "Breno Aquino", idade: 21))
pessoas.append((nome: "Ney Moura", idade: 29))

print(pessoas)

// Dicionario
var dic: [String : Int] = [:]
dic["Breno"] = 21
dic["Ney"] = 29
dic["Matela"] = 19
dic["Breno"] = 22
dic.remove(at: dic.index(forKey: "Breno")!)
dic.removeValue(forKey: "Breno")
print(dic)

// IF e Else
let iOSMelhorAndroid = true
if iOSMelhorAndroid {
    print("Breno que falou")
} else {
    print("Ney que falou")
}

// Ternário
let iOSSempreMelhorQueAndroid = true
let nomeTernario = iOSSempreMelhorQueAndroid ? "Breno que falou" : "Ney que falou"
print(nomeTernario)
print(iOSSempreMelhorQueAndroid ? "Breno que falou" : "Ney que falou")

// If let
var nomeOptional: String?
//nomeOptional = "Breno"
if let nomeSemOptional = nomeOptional {
    print(nomeSemOptional)
}

// Função simples, sem labels adicional
func imprimePessoaCom(nome: String, sobrenome: String, idade: Int){
    print("Olá, me chamo \(nome) \(sobrenome), e tenho \(idade) anos.")
}
imprimePessoaCom(nome: "Ney", sobrenome: "Moura", idade: 29)

// Função com labels e nome do parâmetro diferentes
func soma(x val1: Int, y val2: Int) -> Int {
    return val1 + val2
}
print(soma(x: 1, y: 2))

// Função sem labels
func subtracao(_ val1: Int, _ val2: Int) -> Int {
    return val1 - val2
}
print(subtracao(2, 1))

// Estrutura de uma função com legendas e parâmetros diferenciados
func somaAux(legenda1 parametro1: Int, legenda2 parametro2: Int) -> Int {
    return parametro1 + parametro2
}

// Closure
func calcule(x: Int, y: Int, onComplete: ((_ resultado: Int) -> ())? = nil) -> Int {
    
    let resultado = x+y
    
    if let safeComplete = onComplete {
        safeComplete(resultado)
    }
    
    return resultado
    
}

calcule(x: 1, y: 2)

calcule(x: 1, y: 2, onComplete: { resultado in
    print(resultado)
})

calcule(x: 1, y: 2) { resultado in
    print(resultado)
}

print(calcule(x: 1, y: 2))

let nums = [0,1,2,3,4,5,6,7,8,9]

nums.forEach { (i) in
    print(i)
}
nums.forEach { print($0) }

let numsLet = [0,1,2,3,4,5,6,7,8,9]
var numsVal = [0,1,2,3,4,5,6,7,8,9]

let numsLetSorted = numsLet.sorted { (a, b) -> Bool in
    return a>b
}

numsVal.sort { (a, b) -> Bool in
    return a > b
}
print(numsVal)

// While
var iWhile = 0
while iWhile < 10 {
    iWhile += 1
}

// Repeat While (Do While)
var iRepeatWhile = 0
repeat {
    iRepeatWhile += 1
} while iRepeatWhile < 10

// For
for i in 0...12 {
    print(i)
}
for i in 0..<12 {
    print(i)
}
let numsFor = [0,1,2,3,4,5,6,7,8,9]
for i in numsFor {
    print(i)
}

// Laços
let numsExemplo = [0, 3, 2, 1, 7, 5, 6, 10, 8, 9]
numsExemplo.forEach { (num) in
    
    print(num)
}
numsExemplo.forEach({print($0)})

// Ordenação de vetores
// nums.sort()   //Ordena o próprio vetor (só pode ser usada com vars)
// nums.sorted() //Cria uma cópia ordenada do vetor (pode ser usada com vals e lets)

let ordenado = numsExemplo.sorted(by: {$0 < $1})
print(ordenado)

// Struct
struct PessoaStruct {
    var nome: String = ""
    var idade: Int = 0
}

// Classe
class Pessoa {
    
    var nome: String
    var idade: Int
    
    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }
}

var pessoaClass = Pessoa(nome: "Breno", idade: 21)

// Extension
extension Pessoa {
    
    func falarVerdade() -> Void {
        print("iOS > Android")
    }
}

pessoaClass.falarVerdade()
