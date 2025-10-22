class Rutina {

    method descanso() = 0
    method intensidad() = 0
    var property tiempo = 0 

    method caloriasQuemadas() {
        return 100 * (self.tiempo() - self.descanso()) * self.intensidad()
    }

}

class Running inherits Rutina{
    var property intensidad = 0

    override method descanso() {
        if(self.tiempo() > 20) return 5 else return 2
    }

}

class Remo inherits Rutina {

    override method intensidad() {
        return 1.3
    }

    override method descanso() {
        return self.tiempo() / 5
    }

}

class Remo_Competicion inherits Remo{
   

    override method intensidad() {
        return 1.7
    }

    override method descanso() {
        return 2.max(super() - 3)
    }
}

class Maraton inherits Running {
    override method caloriasQuemadas() {
        return (super() * 2)
    }
}

class Persona {
  
}

class Persona_Sedentaria {
  
}

class Persona_Atleta {
  
}

class Predio {
  
}

class Club {
  
}