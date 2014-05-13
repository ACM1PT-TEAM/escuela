package escuela

class Alumno extends Usuario {
  
    static hasMany = [peticiones:PeticionAlumno]
    
    static constraints = {
		peticiones display:false, nullable:true, blank:true
    }

	String toString(){
		super.toString()
	}

}
