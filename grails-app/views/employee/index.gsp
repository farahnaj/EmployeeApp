
<%@ page import="mongodemoproject.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-employee" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="address" title="${message(code: 'employee.address.label', default: 'Address')}" />
					
						<g:sortableColumn property="city" title="${message(code: 'employee.city.label', default: 'City')}" />
					
						<g:sortableColumn property="country" title="${message(code: 'employee.country.label', default: 'Country')}" />
					
						<g:sortableColumn property="dateOfBirth" title="${message(code: 'employee.dateOfBirth.label', default: 'Date Of Birth')}" />
					
						<g:sortableColumn property="deskLocation" title="${message(code: 'employee.deskLocation.label', default: 'Desk Location')}" />
					
						<g:sortableColumn property="employeeID" title="${message(code: 'employee.employeeID.label', default: 'Employee ID')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${employeeInstanceList}" status="i" var="employeeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${employeeInstance.id}">${fieldValue(bean: employeeInstance, field: "address")}</g:link></td>
					
						<td>${fieldValue(bean: employeeInstance, field: "city")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "country")}</td>
					
						<td><g:formatDate date="${employeeInstance.dateOfBirth}" /></td>
					
						<td>${fieldValue(bean: employeeInstance, field: "deskLocation")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "employeeID")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${employeeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
