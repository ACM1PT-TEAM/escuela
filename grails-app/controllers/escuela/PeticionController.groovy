package escuela



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PeticionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Peticion.list(params), model:[peticionInstanceCount: Peticion.count()]
    }

	def aceptarPeticion(Peticion peticionInstance){
				def c1 = new Curso(
						nivelCurso:peticionInstance.nivelCurso,
						dias:peticionInstance.dias,
						horario:peticionInstance.horarios,
						activo:true,
						profesor:peticionInstance.profesor
				)

			c1.save()
			flash.message =	"Curso agregado al sistema."
			delete(peticionInstance)
			redirect(action:"index")
	}

    def show(Peticion peticionInstance) {
        respond peticionInstance
    }

    def create() {
        respond new Peticion(params)
    }

    @Transactional
    def save(Peticion peticionInstance) {
        if (peticionInstance == null) {
            notFound()
            return
        }

        if (peticionInstance.hasErrors()) {
            respond peticionInstance.errors, view:'create'
            return
        }

        peticionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'peticionInstance.label', default: 'Peticion'), peticionInstance.id])
                redirect peticionInstance
            }
            '*' { respond peticionInstance, [status: CREATED] }
        }
    }

    def edit(Peticion peticionInstance) {
        respond peticionInstance
    }

    @Transactional
    def update(Peticion peticionInstance) {
        if (peticionInstance == null) {
            notFound()
            return
        }

        if (peticionInstance.hasErrors()) {
            respond peticionInstance.errors, view:'edit'
            return
        }

        peticionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Peticion.label', default: 'Peticion'), peticionInstance.id])
                redirect peticionInstance
            }
            '*'{ respond peticionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Peticion peticionInstance) {

        if (peticionInstance == null) {
            notFound()
            return
        }

        peticionInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Peticion.label', default: 'Peticion'), peticionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'peticionInstance.label', default: 'Peticion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
