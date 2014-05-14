import escuela.Profesor
import escuela.Usuario
import escuela.Alumno
import escuela.Curso

class BootStrap {

    def init = { servletContext ->
		def p1 = new Profesor(
				correoElectronico:"a@a.com",
				password:"acm1pt",
				nombre:"Moises",
				apellidoPaterno:"Mascapo",
				apellidoMaterno:"rongas",
				telefono:"34123456"
				)

		p1.save()

		if(p1.hasErrors()){
			println p1.errors
		}

		def p2 = new Profesor(
				correoElectronico:"b@a.com",
				password:"acm1pt",
				nombre:"Eduardo",
				apellidoPaterno:"Sopla",
				apellidoMaterno:"Velas",
				telefono:"3412342"
				)

		p2.save()

		def p3 = new Alumno(
				correoElectronico:"c@a.com",
				password:"acm1pt",
				nombre:"fernando",
				apellidoPaterno:"acm",
				apellidoMaterno:"1pt",
				telefono:"ascscsd"
				)

		p3.save()

		if(p2.hasErrors()){
			println p3.errors
		}

		def c1 = new Curso(
				nivelCurso:"Basico 1",
				dias:"Lunes-Viernes",
				horario:"15-17 pm",
				activo:true,
				profesor:p1
				)

		c1.save()

		def lista = Usuario.list()

		for ( i in lista){
			println i
		}

		println "Profesores"

		def lista2 = Profesor.list()

		for ( i in lista2){
			println i
		}
    }
    def destroy = {
    }
}
