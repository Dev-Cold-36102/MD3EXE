function checkNull() {
    if (document.getElementById("name").value == ""
        || document.getElementById("email").value == ""
        || document.getElementById("country").value == "") {
        alert("please fill the box!");
    }
}
