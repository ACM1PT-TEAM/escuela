<%@ page import="escuela.Curso" %>



<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'nivelCurso', 'error')} required">
	<label for="nivelCurso">
		<g:message code="curso.nivelCurso.label" default="Nivel Curso" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="nivelCurso" from="${cursoInstance.constraints.nivelCurso.inList}" required="" value="${cursoInstance?.nivelCurso}" valueMessagePrefix="curso.nivelCurso"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'dias', 'error')} required">
	<label for="dias">
		<g:message code="curso.dias.label" default="Dias" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="dias" from="${cursoInstance.constraints.dias.inList}" required="" value="${cursoInstance?.dias}" valueMessagePrefix="curso.dias"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'horario', 'error')} required">
	<label for="horario">
		<g:message code="curso.horario.label" default="Horario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="horario" from="${cursoInstance.constraints.horario.inList}" required="" value="${cursoInstance?.horario}" valueMessagePrefix="curso.horario"/>
</div>

<div class="fieldcontain ${hasErrors(bean: cursoInstance, field: 'profesor', 'error')} required">
	<label for="profesor">
		<g:message code="curso.profesor.label" default="Profesor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="profesor" name="profesor.id" from="${escuela.Profesor.list()}" optionKey="id" required="" value="${cursoInstance?.profesor?.id}" class="many-to-one"/>
</div>

