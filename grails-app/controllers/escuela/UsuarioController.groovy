package escuela



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UsuarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Usuario.list(params), model:[usuarioInstanceCount: Usuario.count()]
    }

    def show(Usuario usuarioInstance) {
        respond usuarioInstance
    }

	def login = {}
	def logout = {
		flash.message = "Vuelve Pronto ${session.user.nombre}"
		session.user = null
		session.alumno = null
		session.profesor = null
		redirect(action:"login")
	}

	def authenticate = {
		def user = Usuario.findByCorreoElectronicoAndPassword(params.login,params.password)
		session.user = user
		if(user){
			if(user.tipoUsuario=="alumno"){
				def alumno = Alumno.findByCorreoElectronicoAndPassword(params.login,params.password)
				session.alumno = alumno
				flash.message = "Hola ${user.nombre}!"
				redirect(controller:"alumno", action:"index")
			}
			if(user.tipoUsuario=="profesor"){
				def profesor = Profesor.findByCorreoElectronicoAndPassword(params.login,params.password)
				session.profesor = profesor
				flash.message = "Hola Profesor ${user.nombre}!"
				redirect(controller:"profesor", action:"index")
			}
		}else{
			flash.message =	"El login o el password introducido no fue encontrado en el sistema."
			redirect(action:"login")
		}
	}

    def create() {
        respond new Usuario(params)
    }

    @Transactional
    def save(Usuario usuarioInstance) {
        if (usuarioInstance == null) {
            notFound()
            return
        }

        if (usuarioInstance.hasErrors()) {
            respond usuarioInstance.errors, view:'create'
            return
        }

        usuarioInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'usuarioInstance.label', default: 'Usuario'), usuarioInstance.id])
                redirect usuarioInstance
            }
            '*' { respond usuarioInstance, [status: CREATED] }
        }
    }

    def edit(Usuario usuarioInstance) {
        respond usuarioInstance
    }

    @Transactional
    def update(Usuario usuarioInstance) {
        if (usuarioInstance == null) {
            notFound()
            return
        }

        if (usuarioInstance.hasErrors()) {
            respond usuarioInstance.errors, view:'edit'
            return
        }

        usuarioInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Usuario.label', default: 'Usuario'), usuarioInstance.id])
                redirect usuarioInstance
            }
            '*'{ respond usuarioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Usuario usuarioInstance) {

        if (usuarioInstance == null) {
            notFound()
            return
        }

        usuarioInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Usuario.label', default: 'Usuario'), usuarioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuarioInstance.label', default: 'Usuario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
