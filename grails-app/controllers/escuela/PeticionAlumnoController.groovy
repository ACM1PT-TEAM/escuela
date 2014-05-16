package escuela



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PeticionAlumnoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PeticionAlumno.list(params), model:[peticionAlumnoInstanceCount: PeticionAlumno.count()]
    }

	def indice() {
		def lista = PeticionAlumno.findAllByEstado("Pendiente")
		[lista:lista]
    }

	def aceptarPeticion(PeticionAlumno peticionAlumnoInstance){
		peticionAlumnoInstance.estado = "Aceptado"
		peticionAlumnoInstance.save(flush:true)
		flash.message =	"Alumno agregado al curso."
		redirect(action:"indice")
	}

	def rechazarPeticion(PeticionAlumno peticionAlumnoInstance){
		peticionAlumnoInstance.estado = "Rechazado"
		peticionAlumnoInstance.save(flush:true)
		flash.message =	"Se rechazo al alumno."
		redirect(action:"indice")
	}

    def show(PeticionAlumno peticionAlumnoInstance) {
        respond peticionAlumnoInstance
    }

    def create() {
        respond new PeticionAlumno(params)
    }

    @Transactional
    def save(PeticionAlumno peticionAlumnoInstance) {
        if (peticionAlumnoInstance == null) {
            notFound()
            return
        }

        if (peticionAlumnoInstance.hasErrors()) {
            respond peticionAlumnoInstance.errors, view:'create'
            return
        }

        peticionAlumnoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'peticionAlumnoInstance.label', default: 'PeticionAlumno'), peticionAlumnoInstance.id])
//                redirect peticionAlumnoInstance
				redirect(controller:"alumno", action:"index")
            }
            '*' { respond peticionAlumnoInstance, [status: CREATED] }
        }
    }

    def edit(PeticionAlumno peticionAlumnoInstance) {
        respond peticionAlumnoInstance
    }

    @Transactional
    def update(PeticionAlumno peticionAlumnoInstance) {
        if (peticionAlumnoInstance == null) {
            notFound()
            return
        }

        if (peticionAlumnoInstance.hasErrors()) {
            respond peticionAlumnoInstance.errors, view:'edit'
            return
        }

        peticionAlumnoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PeticionAlumno.label', default: 'PeticionAlumno'), peticionAlumnoInstance.id])
                redirect peticionAlumnoInstance
            }
            '*'{ respond peticionAlumnoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PeticionAlumno peticionAlumnoInstance) {

        if (peticionAlumnoInstance == null) {
            notFound()
            return
        }

        peticionAlumnoInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PeticionAlumno.label', default: 'PeticionAlumno'), peticionAlumnoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'peticionAlumnoInstance.label', default: 'PeticionAlumno'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
