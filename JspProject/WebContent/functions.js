function checkPassword() {
	var password = document.register.password.value;
	var password_confirm = document.register.password_confirm.value;
	if (password != null) {
		if (password === password_confirm)
			return true;
	}
	return false;
}
function checkUsername() {
	var username = document.register.username.value;
	if (username != null) {
		return true;
	}
	return false;
}

function checkSelect(list_name) {
	return document.register[list_name].value !== "בחר מיקום";
}

function checkEmail() {
	var email = document.register.email.value;
	var email_confirm = document.register.email_confirm.value;
	return email === email_confirm && email !== null && email.includes("@");
}
//function checkText(fieldName) {
//	return document.register[fieldName].value !== "";
//}
//function checkPostPostText(fieldName) {
//	return document.postPost[fieldName].value !== "";
//}
function checkAll() {
	return (checkEmail() && checkPassword() && checkUsername()
			&& checkSelect("compType") && checkSelect("country")
			&& checkText("teamNumber") && checkText("teamJob"));
}
//function checkPostPost() {
////	return (checkPostPostText("postName") && checkPostPostText("postText"));
//	return (document.postPost["postName"].value !== "" && document.postPost["postText"].value !== "");
//}