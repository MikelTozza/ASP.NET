//la fonction validate, vait usage d'un
//objet de type etudiant afin d'effectuer la
//validation du formulaire index.html
function validate() {
    var name = document.getElementById('name');
    var email = document.getElementById('email');
    var phone = document.getElementById('phone');

    var valid = new form(name.value, email.value, phone.value);

    if (!valid.validateNom()) {
        name.style.borderColor = "red";

    }
    else {
        name.style.borderColor = "black";
    }

    if (!valid.validateTel()) {
        phone.style.borderColor = "red";

    }
    else {
        phone.style.borderColor = "black";
    }

    if (!valid.validateEmail()) {
        email.style.borderColor = "red";

    }
    else {
        email.style.borderColor = "black";
    }

}
//cr�ation du constructeur de la classe �tudiant
function form(name, email, phone) {
    this.name = name;
    this.email = email;
    this.phone = phone;

}
//propri�t�e de la classe �tudiant qui
//permet de r�ccup�rer le nom
form.prototype.getNom = function () {
    return this.name;
}
//propri�t�e de la classe �tudiant qui
//permet de modifier le nom
form.prototype.setNom = function (name) {
    this.name = name;
}

form.prototype.getMail = function () {
    return this.email;
}
//propri�t�e de la classe �tudiant qui
//permet de modifier le mail
form.prototype.setMail = function (email) {
    this.email = email;

}

//propri�t�e de la classe �tudiant qui
//permet de modifier le tel
form.prototype.setTel = function (phone) {

    this.phone = phone;

}
//propri�t�e de la classe �tudiant qui
//permet de r�ccup�rer le tel
form.prototype.getTel = function () {
    return this.phone;
}

form.prototype.validateNom = function () {
    var status;

    for (var i = 0; i < this.name.length; i++) {
        if (((this.name.charCodeAt(i) >= "A".charCodeAt(0)) && (this.name.charCodeAt(i) <= "Z".charCodeAt(0))) ||
            ((this.name.charCodeAt(i) >= "a".charCodeAt(0)) && (this.name.charCodeAt(i) <= "z".charCodeAt(0)))) {
            status = true;

        }
        else {
            alert("INVALID NAME INVALID NAME INVALID NAME INVALID NAME INVALID NAME INVALID NAME ");
            status = false;
        }
    }

    return status;


}

//fonction permettant de valider le num�ro de tel
form.prototype.validateTel = function () {

    var telRegEx = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im; //https://stackoverflow.com/questions/4338267/validate-phone-number-with-javascript
    if (telRegEx.test(this.phone)) {
        return true;  //code
    }
    else {
        alert("You wrote something that I CANNOT COMPUTE BEEP-BOOP");

        return false;
    }


}
//fonction permettant de valider le email
form.prototype.validateEmail = function () {

    var emailRegEx = /[a-zA-Z0-9]+(\.|_|-)?[a-zA-Z0-9]+@gmail\.com/;
    if (emailRegEx.test(this.email)) {
        return true;  //code
    }
    else {
        alert("You wrote an email that makes no sense *beeep* *boop*");
        return false;

    }
}
