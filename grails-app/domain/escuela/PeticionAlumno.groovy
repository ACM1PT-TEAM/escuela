package escuela

class PeticionAlumno {

    String estado
    Integer calificacion
    
    static belongsTo = [curso:Curso, alumno:Alumno]
    
    static constraints = {
        estado inList:["Aceptado","Rechazado","Pendiente"], nullable:true, blank:true, display:false
		calificacion display:false, nullable:true, blank:true
    }
}
