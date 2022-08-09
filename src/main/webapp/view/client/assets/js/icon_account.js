var icAcount = document.getElementById("link-account");
var linkSign = document.getElementById("link-sign-in");
var icAcount2 = document.getElementById("link-account-2");
var linkSign2 = document.getElementById("link-sign-in-2");
icAcount.style.display = sessionStorage.getItem("icAccount");
linkSign.style.display = sessionStorage.getItem("linkSignIn");
icAcount2.style.display = sessionStorage.getItem("icAccount");
linkSign2.style.display = sessionStorage.getItem("linkSignIn");

  function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
    console.log('User signed out.');
});
}

