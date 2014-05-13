
<%@ page import="escuela.PeticionAlumno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'peticionAlumno.label', default: 'PeticionAlumno')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-peticionAlumno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-peticionAlumno" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list peticionAlumno">
			
				<g:if test="${peticionAlumnoInstance?.estado}">
				<li class="fieldcontain">
					<span id="estado-label" class="property-label"><g:message code="peticionAlumno.estado.label" default="Estado" /></span>
					
						<span class="property-value" aria-labelledby="estado-label"><g:fieldValue bean="${peticionAlumnoInstance}" field="estado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${peticionAlumnoInstance?.calificacion}">
				<li class="fieldcontain">
					<span id="calificacion-label" class="property-label"><g:message code="peticionAlumno.calificacion.label" default="Calificacion" /></span>
					
						<span class="property-value" aria-labelledby="calificacion-label"><g:fieldValue bean="${peticionAlumnoInstance}" field="calificacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${peticionAlumnoInstance?.alumno}">
				<li class="fieldcontain">
					<span id="alumno-label" class="property-label"><g:message code="peticionAlumno.alumno.label" default="Alumno" /></span>
					
						<span class="property-value" aria-labelledby="alumno-label"><g:link controller="alumno" action="show" id="${peticionAlumnoInstance?.alumno?.id}">${peticionAlumnoInstance?.alumno?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${peticionAlumnoInstance?.curso}">
				<li class="fieldcontain">
					<span id="curso-label" class="property-label"><g:message code="peticionAlumno.curso.label" default="Curso" /></span>
					
						<span class="property-value" aria-labelledby="curso-label"><g:link controller="curso" action="show" id="${peticionAlumnoInstance?.curso?.id}">${peticionAlumnoInstance?.curso?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:peticionAlumnoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${peticionAlumnoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
