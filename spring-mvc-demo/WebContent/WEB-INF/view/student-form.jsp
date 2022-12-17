<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
    
<!DOCTYPE html>
<html>

<head>
<title>Student Form</title>
</head>

<body>
	<form:form action="processForm" modelAttribute="student">
	
	First name: <form:input path="firstName" />
	<br><br>
	
	Last name: <form:input path="lastName" />
	<br><br>
	
	Country:
	<form:select path="country">
		<form:options items="${student.countryOptions }" />
		
		<!--  instead of hardcoding the values, its better to read from a list which is in Student class 
		<form:option value="Qatar" label="Qatar" />
		<form:option value="Morocco" label="Morocco" />
		<form:option value="France" label="France" />
		<form:option value="Brazil" label="Brazil" />
		
		 -->
	</form:select>
	<br><br>
	
	Favourite Language: 
		Java <form:radiobutton path="favouriteLanguage" value="Java" />
		C# <form:radiobutton path="favouriteLanguage" value="C#" />
		PHP <form:radiobutton path="favouriteLanguage" value="PHP" />
		Ruby <form:radiobutton path="favouriteLanguage" value="Ruby" />
	
	<br><br>
	
	Operating Systems:
		Linux <form:checkbox path="operatingSystems" value="Linux" />
		Mac OS <form:checkbox path="operatingSystems" value="Mac OS" />
		MS Windows <form:checkbox path="operatingSystems" value="MS Windows" />
	<br><br>
	
	<input type="submit" value="Submit"/>
	
	</form:form>
</body>
</html>