/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function validation(theForm) {
    if (theForm.username.value.length == 0) {
        alert("Username can't be blank");
        theForm.user.focus();
        return false;
    } else if (theForm.password.value.length == 0) {
        alert("Password can't be blank");
        theForm.password.focus();
        return false;
    }
}
