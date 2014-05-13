
<%@ page import="escuela.Profesor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profesor.label', default: 'Profesor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-profesor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-profesor" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="correoElectronico" title="${message(code: 'profesor.correoElectronico.label', default: 'Correo Electronico')}" />
					
						<g:sortableColumn property="password" title="${message(code: 'profesor.password.label', default: 'Password')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'profesor.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellidoPaterno" title="${message(code: 'profesor.apellidoPaterno.label', default: 'Apellido Paterno')}" />
					
						<g:sortableColumn property="apellidoMaterno" title="${message(code: 'profesor.apellidoMaterno.label', default: 'Apellido Materno')}" />
					
						<g:sortableColumn property="telefono" title="${message(code: 'profesor.telefono.label', default: 'Telefono')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${profesorInstanceList}" status="i" var="profesorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${profesorInstance.id}">${fieldValue(bean: profesorInstance, field: "correoElectronico")}</g:link></td>
					
						<td>${fieldValue(bean: profesorInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: profesorInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: profesorInstance, field: "apellidoPaterno")}</td>
					
						<td>${fieldValue(bean: profesorInstance, field: "apellidoMaterno")}</td>
					
						<td>${fieldValue(bean: profesorInstance, field: "telefono")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${profesorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
