<%@ page import="escuela.Alumno" %>



<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'correoElectronico', 'error')} required">
	<label for="correoElectronico">
		<g:message code="alumno.correoElectronico.label" default="Correo Electronico" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="correoElectronico" required="" value="${alumnoInstance?.correoElectronico}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="alumno.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" maxlength="15" required="" value="${alumnoInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="alumno.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${alumnoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="alumno.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" required="" value="${alumnoInstance?.apellidoPaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'apellidoMaterno', 'error')} required">
	<label for="apellidoMaterno">
		<g:message code="alumno.apellidoMaterno.label" default="Apellido Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoMaterno" required="" value="${alumnoInstance?.apellidoMaterno}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'telefono', 'error')} ">
	<label for="telefono">
		<g:message code="alumno.telefono.label" default="Telefono" />
		
	</label>
	<g:textField name="telefono" value="${alumnoInstance?.telefono}"/>
</div>

