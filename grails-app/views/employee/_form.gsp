<%@ page import="mongodemoproject.Employee" %>



<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="employee.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${employeeInstance?.address}" />

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="employee.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${employeeInstance?.city}" />

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="employee.country.label" default="Country" />
		
	</label>
	<g:textField name="country" value="${employeeInstance?.country}" />

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'dateOfBirth', 'error')} ">
	<label for="dateOfBirth">
		<g:message code="employee.dateOfBirth.label" default="Date Of Birth" />
		
	</label>
	<g:datePicker name="dateOfBirth" precision="day" value="${employeeInstance?.dateOfBirth}" />

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'deskLocation', 'error')} ">
	<label for="deskLocation">
		<g:message code="employee.deskLocation.label" default="Desk Location" />
		
	</label>
	<g:textField name="deskLocation" value="${employeeInstance?.deskLocation}" />

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'employeeID', 'error')} ">
	<label for="employeeID">
		<g:message code="employee.employeeID.label" default="Employee ID" />
		
	</label>
	<g:field type="number" name="employeeID" value="${employeeInstance.employeeID}" />

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'extension', 'error')} ">
	<label for="extension">
		<g:message code="employee.extension.label" default="Extension" />
		
	</label>
	<g:field type="number" name="extension" value="${employeeInstance.extension}" />

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="employee.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${employeeInstance?.firstName}" />

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'jobTitle', 'error')} ">
	<label for="jobTitle">
		<g:message code="employee.jobTitle.label" default="Job Title" />
		
	</label>
	<g:textField name="jobTitle" value="${employeeInstance?.jobTitle}" />

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'joiningDate', 'error')} ">
	<label for="joiningDate">
		<g:message code="employee.joiningDate.label" default="Joining Date" />
		
	</label>
	<g:datePicker name="joiningDate" precision="day" value="${employeeInstance?.joiningDate}" />

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="employee.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${employeeInstance?.lastName}" />

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'ldapUserID', 'error')} ">
	<label for="ldapUserID">
		<g:message code="employee.ldapUserID.label" default="Ldap User ID" />
		
	</label>
	<g:textField name="ldapUserID" value="${employeeInstance?.ldapUserID}" />

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'mobileNumber', 'error')} ">
	<label for="mobileNumber">
		<g:message code="employee.mobileNumber.label" default="Mobile Number" />
		
	</label>
	<g:textField name="mobileNumber" value="${employeeInstance?.mobileNumber}" />

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'nickName', 'error')} ">
	<label for="nickName">
		<g:message code="employee.nickName.label" default="Nick Name" />
		
	</label>
	<g:textField name="nickName" value="${employeeInstance?.nickName}" />

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'personalEmail', 'error')} ">
	<label for="personalEmail">
		<g:message code="employee.personalEmail.label" default="Personal Email" />
		
	</label>
	<g:textField name="personalEmail" value="${employeeInstance?.personalEmail}" />

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'relevantExperience', 'error')} ">
	<label for="relevantExperience">
		<g:message code="employee.relevantExperience.label" default="Relevant Experience" />
		
	</label>
	<g:field type="number" name="relevantExperience" value="${employeeInstance.relevantExperience}" />

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'reportingManager', 'error')} ">
	<label for="reportingManager">
		<g:message code="employee.reportingManager.label" default="Reporting Manager" />
		
	</label>
	<g:textField name="reportingManager" value="${employeeInstance?.reportingManager}" />

</div>

