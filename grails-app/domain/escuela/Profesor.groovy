package escuela

class Profesor extends Usuario {

	List cursos
    String video
    String constancia
    
    static hasMany = [cursos: Curso,peticiones: Peticion]
    
    static constraints = {       
        video nullable:true,blank:true,display:false// maxSize: 104857600,url:true)
        constancia nullable:true,blank:true,display:false// maxSize: 1000000,url:true)
        cursos display:false,nullable:true, blank:true
		peticiones display:false,nullable:true, blank:true
    }

	def beforeInsert() {
      tipoUsuario = "profesor"
	}

	String toString(){
		super.toString()
	}
}
