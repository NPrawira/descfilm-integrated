function regis(){
	document.getElementById("login").style.display ="none";
	document.getElementById("regist").style.display ="block";
	document.getElementById("title").innerText = "Register";
}
function cancel(){
	document.getElementById("login").style.display ="block";
	document.getElementById("regist").style.display ="none";
	document.getElementById("title").innerText = "Login";
}
function reload_page() {
		window.location.reload();
	}

if(localstorage.getitem("user"!="")){
	document.getElementById("login").style.display ="none";
	document.getElementById("regist").style.display ="none";
	document.getElementById("profil").style.display ="block";
	userRef.once('value', function(parentSnapshot) {
        parentSnapshot.forEach(function(childSnapshot) {
            var childKey = childSnapshot.key;
            var childData = childSnapshot.val();
            a = childData.user;
            var data1 = document.getElementById("em");
            data1.insertAdjacentHTML("beforeend","<br><br>"+childKey);
            var data2 = document.getElementById("us");
            data2.insertAdjacentHTML("beforeend","<br><br>"+a);
        });
    });
}

var firebaseConfig = {
    apiKey: "apiKey",
    authDomain: "authDomain",
    databaseURL: "databaseURL",
    projectId: "projectId",
    storageBucket: "storageBucket",
    messagingSenderId: "messagingSenderId",
    appId: "appId",
    measurementId: "measurementId"
	};
  	firebase.initializeApp(firebaseConfig);
  	firebase.analytics();
const database = firebase.database();
const userRef = database.ref('/users');

const login = document.getElementById('logins');
const register = document.getElementById('registers');
const edits = document.getElementById('edits');
const email = document.getElementById('inputEmail');
const user = document.getElementById('inputUsername');
const password = document.getElementById('inputPassword');
const emails = document.getElementById('inputEmails');
const passwords = document.getElementById('inputPasswords');

register.addEventListener('click', e => {
	e.preventDefault();
	if(email.value!="" && user.value!="" && password.value!="") {
		userRef.child(email.value).set({
            user: user.value,
            password: password.value,
        });
        alert('Register successfully!');
    	document.getElementById("title").innerText = "Login";
        reload_page();
        
	}
	else {
		alert('Please input all required fields correctly before continue!');
	}
});

var a,b;
login.addEventListener('click', e => {
	e.preventDefault();
	userRef.once('value', function(parentSnapshot) {
        parentSnapshot.forEach(function(childSnapshot) {
            var childKey = childSnapshot.key;
            var childData = childSnapshot.val();
            a = childData.user;
            b = childData.password;
            if(emails==childKey && passwords==b){
                localStorage.setItem("user", b);
            	window.location.assign("index.jsp")
            }
        });
    });
});

function logout(){
	 localStorage.setItem("user", "");
	 reload_page();
}