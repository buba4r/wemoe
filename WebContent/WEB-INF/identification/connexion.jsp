<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<jsp:useBean id="mess" class="java.lang.String" scope="request" />

<!DOCTYPE html>

	<form  method="post" action="ServletConnexion">
		<table>
			<tr>
				<td>Identifiant&nbsp;:</td>
				<td><input name="ident" type="text" value=""/>
				<td></td>
			</tr>
			<tr>
				<td>Mot de passe&nbsp;:</td>
				<td><input name="mdp" type="text" value="" />
				<td></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input name="submit" type="submit" value="Valider"/>
			</tr>
		</table>
	</form>
	
	<p style="color: red;">${mess}</p>

	
