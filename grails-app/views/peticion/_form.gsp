<%@ page import="escuela.Peticion" %>



<div class="fieldcontain ${hasErrors(bean: peticionInstance, field: 'nivelCurso', 'error')} ">
	<label for="nivelCurso">
		<g:message code="peticion.nivelCurso.label" default="Nivel Curso" />
		
	</label>
	<g:select name="nivelCurso" from="${peticionInstance.constraints.nivelCurso.inList}" value="${peticionInstance?.nivelCurso}" valueMessagePrefix="peticion.nivelCurso" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: peticionInstance, field: 'dias', 'error')} ">
	<label for="dias">
		<g:message code="peticion.dias.label" default="Dias" />
		
	</label>
	<g:select name="dias" from="${peticionInstance.constraints.dias.inList}" value="${peticionInstance?.dias}" valueMessagePrefix="peticion.dias" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: peticionInstance, field: 'horarios', 'error')} ">
	<label for="horarios">
		<g:message code="peticion.horarios.label" default="Horarios" />
		
	</label>
	<g:select name="horarios" from="${peticionInstance.constraints.horarios.inList}" value="${peticionInstance?.horarios}" valueMessagePrefix="peticion.horarios" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: peticionInstance, field: 'profesor', 'error')} required">
	<label for="profesor">
		<g:message code="peticion.profesor.label" default="Profesor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="profesor" name="profesor.id" from="${escuela.Profesor.list()}" optionKey="id" required="" value="${peticionInstance?.profesor?.id}" class="many-to-one"/>
</div>

