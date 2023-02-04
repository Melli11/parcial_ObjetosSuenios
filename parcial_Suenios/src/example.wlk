class Persona{
	var tipoDePersona = 0 //mas adelante
	const property profesion = null //alguna
	var property sueniosPendientes = #{}
	var property sueniosCumplidos = #{}
	var property quiereEstudiar = null//setear carrera
	var property remuneracionPretendida = 0
	
	method agregarSuenio(suenio){
		sueniosPendientes.add(suenio)
	}
	
	method agregarSuenioCumplido(suenio){
		sueniosCumplidos.add(suenio)
	}
	
	method cumplirSuenio(suenio){
		if(!suenio.puedeSerCumplidoPor(self))
			self.agregarSuenio(suenio)
		self.agregarSuenioCumplido(suenio)
	
	}
	
	
}


class Suenio{
	
}

class RecibirseDe inherits Suenio{
	var property carrera = null
	
	method puedeSerCumplidoPor(persona) = persona.quiereEstudiar() == self.carrera() and persona.profesion() != self.carrera() 
}
class ConseguirTrabajo inherits Suenio{
	var property remuneracion
	
	method puedeSerCumplidoPor(persona) = self.remuneracion() >= persona.remuneracionPretendida()
}


//class tenerHijos inherits Suenio{
//	
//}
//

