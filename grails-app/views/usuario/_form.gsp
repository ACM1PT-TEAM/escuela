<%@ page import="escuela.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'correoElectronico', 'error')} required">
	<label for="correoElectronico">
		<g:message code="usuario.correoElectronico.label" default="Correo Electronico" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="correoElectronico" required="" value="${usuarioInstance?.correoElectronico}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="usuario.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" maxlength="15" required="" value="${usuarioInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="usuario.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${usuarioInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="usuario.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" required="" value="${usuarioInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'apellidoMaterno', 'error')} required">
	<label for="apellidoMaterno">
		<g:message code="usuario.apellidoMaterno.label" default="Apellido Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoMaterno" required="" value="${usuarioInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="usuario.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${usuarioInstance?.telefono}"/>
</div>

