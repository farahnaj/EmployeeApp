
<%@ page import="employeemongoapp.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-employee" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list employee">
			
				<g:if test="${employeeInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="employee.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${employeeInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="employee.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${employeeInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="employee.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${employeeInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.dateOfBirth}">
				<li class="fieldcontain">
					<span id="dateOfBirth-label" class="property-label"><g:message code="employee.dateOfBirth.label" default="Date Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate date="${employeeInstance?.dateOfBirth}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.deskLocation}">
				<li class="fieldcontain">
					<span id="deskLocation-label" class="property-label"><g:message code="employee.deskLocation.label" default="Desk Location" /></span>
					
						<span class="property-value" aria-labelledby="deskLocation-label"><g:fieldValue bean="${employeeInstance}" field="deskLocation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.employeeID}">
				<li class="fieldcontain">
					<span id="employeeID-label" class="property-label"><g:message code="employee.employeeID.label" default="Employee ID" /></span>
					
						<span class="property-value" aria-labelledby="employeeID-label"><g:fieldValue bean="${employeeInstance}" field="employeeID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.extension}">
				<li class="fieldcontain">
					<span id="extension-label" class="property-label"><g:message code="employee.extension.label" default="Extension" /></span>
					
						<span class="property-value" aria-labelledby="extension-label"><g:fieldValue bean="${employeeInstance}" field="extension"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="employee.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${employeeInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.jobTitle}">
				<li class="fieldcontain">
					<span id="jobTitle-label" class="property-label"><g:message code="employee.jobTitle.label" default="Job Title" /></span>
					
						<span class="property-value" aria-labelledby="jobTitle-label"><g:fieldValue bean="${employeeInstance}" field="jobTitle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.joiningDate}">
				<li class="fieldcontain">
					<span id="joiningDate-label" class="property-label"><g:message code="employee.joiningDate.label" default="Joining Date" /></span>
					
						<span class="property-value" aria-labelledby="joiningDate-label"><g:formatDate date="${employeeInstance?.joiningDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="employee.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${employeeInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.ldapUserID}">
				<li class="fieldcontain">
					<span id="ldapUserID-label" class="property-label"><g:message code="employee.ldapUserID.label" default="Ldap User ID" /></span>
					
						<span class="property-value" aria-labelledby="ldapUserID-label"><g:fieldValue bean="${employeeInstance}" field="ldapUserID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.mobileNumber}">
				<li class="fieldcontain">
					<span id="mobileNumber-label" class="property-label"><g:message code="employee.mobileNumber.label" default="Mobile Number" /></span>
					
						<span class="property-value" aria-labelledby="mobileNumber-label"><g:fieldValue bean="${employeeInstance}" field="mobileNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.nickName}">
				<li class="fieldcontain">
					<span id="nickName-label" class="property-label"><g:message code="employee.nickName.label" default="Nick Name" /></span>
					
						<span class="property-value" aria-labelledby="nickName-label"><g:fieldValue bean="${employeeInstance}" field="nickName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.personalEmail}">
				<li class="fieldcontain">
					<span id="personalEmail-label" class="property-label"><g:message code="employee.personalEmail.label" default="Personal Email" /></span>
					
						<span class="property-value" aria-labelledby="personalEmail-label"><g:fieldValue bean="${employeeInstance}" field="personalEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.relevantExperience}">
				<li class="fieldcontain">
					<span id="relevantExperience-label" class="property-label"><g:message code="employee.relevantExperience.label" default="Relevant Experience" /></span>
					
						<span class="property-value" aria-labelledby="relevantExperience-label"><g:fieldValue bean="${employeeInstance}" field="relevantExperience"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.reportingManager}">
				<li class="fieldcontain">
					<span id="reportingManager-label" class="property-label"><g:message code="employee.reportingManager.label" default="Reporting Manager" /></span>
					
						<span class="property-value" aria-labelledby="reportingManager-label"><g:fieldValue bean="${employeeInstance}" field="reportingManager"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:employeeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${employeeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
