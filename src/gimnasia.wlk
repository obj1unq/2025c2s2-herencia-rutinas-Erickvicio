class Rutina {

    var property descanso = 0
    method intensidad() = 0

    method caloriasQuemadasEn(minutos) {
        return 100 * (minutos - descanso) * self.intensidad()
    }

}

class Running inherits Rutina{

    override method caloriasQuemadasEn(minutos){
        if(minutos > 20){
            self.descanso(5)
            return super(minutos)
        }else{
            self.descanso(2)
            return super(minutos)
        }
    }
}

class Remo {

}

class Remo_Competicion {
  
}

class Maraton inherits Running {
    override method caloriasQuemadasEn(minutos) {
        
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