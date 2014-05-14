package escuela

class Alumno extends Usuario {
  
    static hasMany = [peticiones:PeticionAlumno]
    
    static constraints = {
		peticiones display:false, nullable:true, blank:true
    }

	def beforeInsert() {
      tipoUsuario = "alumno"
	}

	String toString(){
		super.toString()
	}

}
