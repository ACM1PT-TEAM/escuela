package escuela

class Peticion {

    String nivelCurso
    String dias
    String horarios
    
    static belongsTo = [profesor:Profesor]
    
    static constraints = {
		nivelCurso inList:["Basico 1", "Basico 2", "Basico 3", "Intermedio 1", "Intermedio 2", "Intermedio 3", "Avanzado 1", "Avanzado 2", "Avanzado 3", "Preparacion TOEFL"]
		dias inList:["Lunes-Viernes","Sabado"]
		horarios inList:["7-9 am","9-11 am","11-13 pm","13-15 pm","15-17 pm","17-19 pm","19-21 pm"]
    }
}
