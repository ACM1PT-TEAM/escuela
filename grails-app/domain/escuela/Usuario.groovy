package escuela

class Usuario {

    String correoElectronico
    String password
    String nombre
    String apellidoPaterno
    String apellidoMaterno
    String telefono
    String tipoUsuario
    
    static constraints = {       
        correoElectronico blank:false, nullable:false, email:true,unique:true
        password size:5..15,blank:false, nullable:false,password:true
        nombre blank:false, nullable:false
        apellidoPaterno blank:false, nullable:false
        apellidoMaterno blank:false, nullable:false 
        telefono blank:true, nullable:false
		tipoUsuario inList:["admin","alumno","profesor"], display:false, blank:true, nullable:true
    }

	static transients = ['admin']

	boolean isAdmin(){
		return tipoUsuario == "admin"
	}

	String toString(){
		"${nombre} ${apellidoPaterno} ${apellidoMaterno}"
	}
}
