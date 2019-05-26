function checkPassword() {
  var password = document.register.password.value;
  var password_confirm = document.register.password_confirm.value;
  document.getElementsByName("סיסמה")[0].style.color = "red";
  if (password.length <= 5) {
    document.getElementsByName("סיסמה")[0].innerText =
      "אורך הסיסמה חייב להיות ארוך מחמישה תווים";
  } else if (password !== password_confirm) {
    document.getElementsByName("סיסמה")[0].innerText =
      "הסיסמה לא תואמת את האישור סיסמה";
    document.getElementsByName("אשר סיסמה")[0].innerText =
      "הסיסמה לא תואמת את האישור סיסמה";
  } else {
    document.getElementsByName("סיסמה")[0].style.color = "black";
    document.getElementsByName("סיסמה")[0].innerText = "סיסמה";
    document.getElementsByName("אשר סיסמה")[0].innerText = "אשר סיסמה";
  }
  return password.length > 5 && password === password_confirm;
}
function checkUsername() {
  var username = document.register.username.value;
  var letter = 0;
  document.getElementsByName("שם משתמש")[0].style.color = "red";

  for (var i = 0; i < username.length; i++) {
    letter = isNaN(username[i]) ? letter + 1 : letter;
  }
  if (username.length == 0) {
    document.getElementsByName("שם משתמש")[0].innerText = "מלא את שם המשתמש";
  } else if (letter >= username.length) {
    document.getElementsByName("שם משתמש")[0].innerText =
      "שם המשתמש חייב להכיל גם מספרים";
  } else {
    document.getElementsByName("שם משתמש")[0].style.color = "black";
    document.getElementsByName("שם משתמש")[0].innerText = "שם משתמש";
  }
  return letter < username.length && letter !== 0;
}
function checkSelect(list_name) {
  return document.register[list_name].value !== "בחר מיקום";
}

function checkEmail() {
  var email = document.register.email.value;
  var email_confirm = document.register.email_confirm.value;
  document.getElementsByName("כתובת דואר")[0].style.color = "red";
  document.getElementsByName("אשר כתובת דואר")[0].style.color = "red";

  var shtrudelCount = 0;
  for (var i in email) {
    if (email[i] == "@") {
      shtrudelCount++;
    }
  }
  if (
    email == null ||
    shtrudelCount != 1 ||
    email[0] == "." ||
    email[0] == "@" ||
    email[email.length - 1] == "." ||
    email[email.length - 1] == "@"
  ) {
    document.getElementsByName("כתובת דואר")[0].innerText =
      "כתובת דואר אינה תקינה";
    return false;
  } else if (email !== email_confirm) {
    document.getElementsByName("כתובת דואר")[0].innerText =
      "כתובת דואר אינה תואמת את אישור כתובת הדואר";
    document.getElementsByName("אשר כתובת דואר")[0].innerText =
      "כתובת דואר אינה תואמת את אישור כתובת הדואר";
    return false;
  } else {
    document.getElementsByName("כתובת דואר")[0].style.color = "black";
    document.getElementsByName("אשר כתובת דואר")[0].style.color = "black";

    document.getElementsByName("כתובת דואר")[0].innerText = "כתובת דואר";
  }
  return true;
}
function checkTeamNumber() {
  var teamNumber = document.register.teamNumber.value;
  document.getElementsByName("מספר קבוצה")[0].style.color = "red";
  if (isNaN(teamNumber)) {
    document.getElementsByName("מספר קבוצה")[0].innerText =
      "מספר הקבוצה חייב להכיל רק מספרים";
    return false;
  } else {
    document.getElementsByName("מספר קבוצה")[0].style.color = "black";
    document.getElementsByName("מספר קבוצה")[0].innerText = "מספר קבוצה";
  }
  return true;
}
function checkTeamJob() {
  var teamJob = document.register.teamJob.value;
  var isnan = true;
  document.getElementsByName("תפקיד בקבוצה")[0].style.color = "red";
  for (var i in teamJob) {
    if (teamJob[i] !== " ") isnan *= isNaN(teamJob[i]);
  }
  if (!isnan) {
    document.getElementsByName("תפקיד בקבוצה")[0].innerText =
      "התפקיד בקבוצה חייב להכיל רק אותיות";
    return false;
  } else {
    document.getElementsByName("תפקיד בקבוצה")[0].style.color = "black";
    document.getElementsByName("תפקיד בקבוצה")[0].innerText = "תפקיד בקבוצה";
  }
  return true;
}
function checkPostPostText(fieldName) {
  return document.postPost[fieldName].value !== "";
}
function checkAll() {
  checkUsername();
  checkPassword();
  checkEmail();
  checkPassword();
  checkUsername();
  checkSelect("compType");
  checkSelect("country");
  checkTeamNumber();
  checkTeamJob();
  return (
    checkEmail() &&
    checkPassword() &&
    checkUsername() &&
    checkSelect("compType") &&
    checkSelect("country") &&
    checkText("teamNumber") &&
    checkText("teamJob")
  );
}
function checkPollQuestion(id) {
  var valid = 0;
  for (var i = 0; i < 4; i++) {
    valid += document.getElementsByName(id)[i].checked;
  }
  return valid == 1 ? true : false;
}
function checkAllPoll() {
  var valid = 1;
  for (var i = 5; i < 14; i++) {
    valid *= checkPollQuestion(i);
    console.log(valid);
  }
  if (valid == 0) {
    alert("fill all questions!");
    return false;
  }
  return true;
}
function checkPostPost() {
  return checkPostPostText("postName") && checkPostPostText("postText");
}
function openFirstPage() {
  var newWin = window.open(
    "firstIsrael.jsp",
    "www.firstisrael.org.il/",
    "width=500px, height=500px"
  );
  window.location.href = "onFirst.jsp";
}
var rightAnswersForQuestions = {
  2: 3,
  3: 1,
  4: 3,
  5: 4,
  6: 1
};

function checkQuiz() {
  var right = 0;
  var ansNum = (document.quiz.elements.length - 1) / 4;
  for (i = 0; i < document.quiz.elements.length; i++) {
    var quizElement = document.quiz.elements[i];
    var questionID = quizElement.name;
    var ansID = quizElement.value;
    var img = document.createElement("img");
    img.className = "quiz";
    if (questionID && questionID.startsWith("q_")) {
      if (quizElement.checked) {
        var span = document.getElementById(questionID + "_" + ansID);
        if (span && rightAnswersForQuestions[questionID[2]] == ansID) {
          img.src = "img/check-image.png";
          right++;
        } else {
          img.src = "img/wrong.png";
        }
        span.appendChild(img);
      }
      quizElement.style.display = "none";
    } else {
      quizElement.value = "נסה שוב";
      document.quiz.onsubmit = true;
    }
  }
  if (right === ansNum) {
    alert("You answered all the questions right!");
  } else {
    alert(
      "You answered " + (right / ansNum) * 100 + "% of the questions right!"
    );
  }
  return false;
}
