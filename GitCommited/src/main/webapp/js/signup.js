/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function validatePasswords() {
    var pass1 = document.getElementById("password").value;
    var pass2 = document.getElementById("confpassword").value;
    
    if (pass1 === pass2) {
        return true;
    } else {
        alert("Please enter matching passwords");
        return false;
    }
}

