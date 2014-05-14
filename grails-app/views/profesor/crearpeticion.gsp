<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'profesor.label', default: 'Profesor')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="crear-peticion" class="content scaffold-create" role="main">
			<h1>Peticion de Curso</h1>

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


		</div>
	</body>
</html>
