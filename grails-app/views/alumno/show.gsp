
<%@ page import="escuela.Alumno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alumno.label', default: 'Alumno')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-alumno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-alumno" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list alumno">
			
				<g:if test="${alumnoInstance?.correoElectronico}">
				<li class="fieldcontain">
					<span id="correoElectronico-label" class="property-label"><g:message code="alumno.correoElectronico.label" default="Correo Electronico" /></span>
					
						<span class="property-value" aria-labelledby="correoElectronico-label"><g:fieldValue bean="${alumnoInstance}" field="correoElectronico"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="alumno.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${alumnoInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="alumno.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${alumnoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.apellidoPaterno}">
				<li class="fieldcontain">
					<span id="apellidoPaterno-label" class="property-label"><g:message code="alumno.apellidoPaterno.label" default="Apellido Paterno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoPaterno-label"><g:fieldValue bean="${alumnoInstance}" field="apellidoPaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.apellidoMaterno}">
				<li class="fieldcontain">
					<span id="apellidoMaterno-label" class="property-label"><g:message code="alumno.apellidoMaterno.label" default="Apellido Materno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoMaterno-label"><g:fieldValue bean="${alumnoInstance}" field="apellidoMaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="alumno.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${alumnoInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.tipoUsuario}">
				<li class="fieldcontain">
					<span id="tipoUsuario-label" class="property-label"><g:message code="alumno.tipoUsuario.label" default="Tipo Usuario" /></span>
					
						<span class="property-value" aria-labelledby="tipoUsuario-label"><g:fieldValue bean="${alumnoInstance}" field="tipoUsuario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.peticiones}">
				<li class="fieldcontain">
					<span id="peticiones-label" class="property-label"><g:message code="alumno.peticiones.label" default="Peticiones" /></span>
					
						<g:each in="${alumnoInstance.peticiones}" var="p">
						<span class="property-value" aria-labelledby="peticiones-label"><g:link controller="peticionAlumno" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:alumnoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${alumnoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
