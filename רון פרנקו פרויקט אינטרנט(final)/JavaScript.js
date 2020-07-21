function chack_all() {
    var a = name();
    var b = LN();
    var c = age();
    var d = password();
    var e = redio();
    var g = DDL();
    return a && b && c && d && e && g;
}
function name() {
    var x = document.getElementById("text1").value;
    if (x == "") {
        document.getElementById("text1").style.backgroundColor = "red";
        alert("input a username");
        return false;
    }
    else if (x.length <= 2) {
        document.getElementById("text1").style.backgroundColor = "red";
        alert("the username is too short");
        return false;
    }
    else {
        document.getElementById("text1").style.backgroundColor = "green";
        return true;
    }
}
function LN() {
    var x = document.getElementById("text2").value;
    if (x == "") {
        document.getElementById("text2").style.backgroundColor = "red";
        alert("input a last name");
        return false;
    }
    else if (x.length <= 2) {
        document.getElementById("text2").style.backgroundColor = "red";
        alert("last name is too short");
        return false;
    }
    else {
        document.getElementById("text2").style.backgroundColor = "green";
        return true;
    }
}
function password() {
    var x = document.getElementById("password").value;
    if (x == "") {
        document.getElementById("password").style.backgroundColor = "red";
        alert("input a password");
        return false;
    }
    else if (x.length <= 4) {
        document.getElementById("password").style.backgroundColor = "red";
        alert("the password is too short");
        return false;
    }
    else {
        document.getElementById("password").style.backgroundColor = "green";
        return true;
    }
}
function age() {
    var x = document.getElementById("text3").value;
    if (x > 8 && x < 88) {
        document.getElementById("text3").style.backgroundColor = "green";
        return true;
    }
    else {
        document.getElementById("text3").style.backgroundColor = "red";
        alert("input an age betwin 8-88");
        return false;
    }
}
function redio() {
    var one = document.getElementById("radio1").checked;
    var two = document.getElementById("radio2").checked;
    if (one == true) {
        return true;
    }
    else if (two == true) {
        return true;
    }
    else  {
        alert("pick gender");
        return false;
    }
}
function DDL() {
    var val = document.getElementById("DDL").value;
    if (val == "select hoby") {
        alert("pick a hoby");
        return false;
    }
    else {
        return true;
    }
}
function quiz_function() {
    var ans = new Array(9);
    var counter = 0;
    ans[0] = document.getElementById("one").checked;
    ans[1] = document.getElementById("two").checked;
    ans[2] = document.getElementById("three").checked;
    ans[3] = document.getElementById("four").checked;
    ans[4] = document.getElementById("five").checked;
    ans[5] = document.getElementById("six").checked;
    ans[6] = document.getElementById("seven").checked;
    ans[7] = document.getElementById("eight").checked;
    ans[8] = document.getElementById("nine").checked;
    for (var i = 0; i < ans.length; i++){
        if(ans[i] == true){
            counter = counter + 11.111111111;
        }
    }
    
    document.getElementById("quiz_ans").innerHTML = "your grade is :" + Math.round(counter);
}
$(function () {
    $("#quiz_ans").hide();
    $('a[href*=#]:not([href=#])').click(function () {
        if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
            if (target.length) {
                $('html,body').animate({
                    scrollTop: target.offset().top
                }, 500);
                return false;
            }
        }
    });
    $("#quiz_button").click(function () {
        $("#quiz_ans").slideDown(1000);
    });
});