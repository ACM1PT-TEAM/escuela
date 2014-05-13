
<%@ page import="escuela.Curso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-curso" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-curso" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list curso">
			
				<g:if test="${cursoInstance?.nivelCurso}">
				<li class="fieldcontain">
					<span id="nivelCurso-label" class="property-label"><g:message code="curso.nivelCurso.label" default="Nivel Curso" /></span>
					
						<span class="property-value" aria-labelledby="nivelCurso-label"><g:fieldValue bean="${cursoInstance}" field="nivelCurso"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.dias}">
				<li class="fieldcontain">
					<span id="dias-label" class="property-label"><g:message code="curso.dias.label" default="Dias" /></span>
					
						<span class="property-value" aria-labelledby="dias-label"><g:fieldValue bean="${cursoInstance}" field="dias"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.horario}">
				<li class="fieldcontain">
					<span id="horario-label" class="property-label"><g:message code="curso.horario.label" default="Horario" /></span>
					
						<span class="property-value" aria-labelledby="horario-label"><g:fieldValue bean="${cursoInstance}" field="horario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="curso.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${cursoInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.aceptado}">
				<li class="fieldcontain">
					<span id="aceptado-label" class="property-label"><g:message code="curso.aceptado.label" default="Aceptado" /></span>
					
						<span class="property-value" aria-labelledby="aceptado-label"><g:formatBoolean boolean="${cursoInstance?.aceptado}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.peticiones}">
				<li class="fieldcontain">
					<span id="peticiones-label" class="property-label"><g:message code="curso.peticiones.label" default="Peticiones" /></span>
					
						<g:each in="${cursoInstance.peticiones}" var="p">
						<span class="property-value" aria-labelledby="peticiones-label"><g:link controller="peticionAlumno" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.profesor}">
				<li class="fieldcontain">
					<span id="profesor-label" class="property-label"><g:message code="curso.profesor.label" default="Profesor" /></span>
					
						<span class="property-value" aria-labelledby="profesor-label"><g:link controller="profesor" action="show" id="${cursoInstance?.profesor?.id}">${cursoInstance?.profesor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:cursoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${cursoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
