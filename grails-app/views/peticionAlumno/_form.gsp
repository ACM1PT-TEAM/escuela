<%@ page import="escuela.PeticionAlumno" %>



<div class="fieldcontain ${hasErrors(bean: peticionAlumnoInstance, field: 'alumno', 'error')} required">
	<label for="alumno">
		<g:message code="peticionAlumno.alumno.label" default="Alumno" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="alumno" name="alumno.id" from="${escuela.Alumno.list()}" optionKey="id" required="" value="${peticionAlumnoInstance?.alumno?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: peticionAlumnoInstance, field: 'curso', 'error')} required">
	<label for="curso">
		<g:message code="peticionAlumno.curso.label" default="Curso" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="curso" name="curso.id" from="${escuela.Curso.list()}" optionKey="id" required="" value="${peticionAlumnoInstance?.curso?.id}" class="many-to-one"/>
</div>

