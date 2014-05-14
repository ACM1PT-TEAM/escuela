
<%@ page import="escuela.Peticion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'peticion.label', default: 'Peticion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-peticion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-peticion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nivelCurso" title="${message(code: 'peticion.nivelCurso.label', default: 'Nivel Curso')}" />
					
						<g:sortableColumn property="dias" title="${message(code: 'peticion.dias.label', default: 'Dias')}" />
					
						<g:sortableColumn property="horarios" title="${message(code: 'peticion.horarios.label', default: 'Horarios')}" />
					
						<th><g:message code="peticion.profesor.label" default="Profesor" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${peticionInstanceList}" status="i" var="peticionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${peticionInstance.id}">${fieldValue(bean: peticionInstance, field: "nivelCurso")}</g:link></td>
					
						<td>${fieldValue(bean: peticionInstance, field: "dias")}</td>
					
						<td>${fieldValue(bean: peticionInstance, field: "horarios")}</td>
					
						<td>${fieldValue(bean: peticionInstance, field: "profesor")}</td>						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${peticionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
