package escuela

class Curso {
    String nivelCurso
	String dias
    String horario
    Boolean activo
    
    static belongsTo = [profesor:Profesor]
    static hasMany = [peticiones:PeticionAlumno]

    static constraints = {
		nivelCurso inList:["Basico 1", "Basico 2", "Basico 3", "Intermedio 1", "Intermedio 2", "Intermedio 3", "Avanzado 1", "Avanzado 2", "Avanzado 3", "Preparacion TOEFL"], blank: false, nullable: false
		dias inList:["Lunes-Viernes","Sabado"], blank: false, nullable: false
		horario inList:["7-9 am","9-11 am","11-13 pm","13-15 pm","15-17 pm","17-19 pm","19-21 pm"], blank: false, nullable: false
		activo display:false, blank:true, nullable:true
		peticiones display:false,nullable:true
    }

	String toString(){
			"${nivelCurso} ${dias} ${horario}"
	}
}
