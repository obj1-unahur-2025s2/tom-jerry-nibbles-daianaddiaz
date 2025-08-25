object tom {
    var energia = 50
    var ultimoRatonComido = null
    var metrosRecorridos = 0

    method energia() = energia
    method ultimoRatonComido() = ultimoRatonComido
    method metrosRecorridos() = metrosRecorridos

    method correr(cantidadMetros){
        energia -= (cantidadMetros / 2)
        metrosRecorridos = cantidadMetros
    } 

    method comer(raton){
        energia += 12 + raton.peso()
        ultimoRatonComido = raton
    }
    method velocidadMax() = 5 + (energia / 10)
    
    method puedeCazarA_En(raton, distancia) {
        self.correr(distancia) // corre distancia a raton
        if (self.metrosRecorridos() < self.energia() and self.ultimoRatonComido() != raton) { // se ve si los metros recorridos son menor a su energia 
            self.comer(raton)
        }
    }
}

object jerry {
  var edad = 2
  method edad() = edad
  method cumpleanios() {
    edad += 1
  }
  method peso() = edad * 20
}

object nibbles {
  method peso() = 35
}

// Inventar otro ratón

object pablo {
    var altura = 10
    method crecer(centimetros) {
        altura += centimetros
    }
    method peso() = altura * 15
}