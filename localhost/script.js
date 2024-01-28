
function articleOver(element){
    element.style.backgroundColor = 'rgba(0,0,0,.8)';
}

function articleOut(element){
    element.style.backgroundColor = 'rgba(0,0,0,.7)';
}

function overImg(element,heroid){
    element.style.backgroundImage = 'linear-gradient(135deg, rgba(255,255,255,0), rgba(255,255,255,.6)), url(./heroes/'+heroid+'.webp)';
    element.style.boxShadow = '3px 3px 1px';
}

function outImg(element,heroid){
    element.style.backgroundImage = 'url(./heroes/'+heroid+'.webp)';
    element.style.boxShadow = '2px 2px 1px';
}

function downImg(element,heroid){
    element.style.backgroundImage = 'linear-gradient(135deg, rgba(255,255,255,0), rgba(40,40,40,.6)), url(./heroes/'+heroid+'.webp)';
    element.style.boxShadow = '1px 1px 1px';
}

function writeInputs(element){
}

function addInput(){
    var select = document.getElementById('selectTag');
    let option = document.querySelector("option[value='"+select.value+"']");
    if (option) {
        option.disabled = true;    
        var input = document.getElementById('tags');
        input.value += select.value;
        select.value = "-- выберите героя для тега --";
    }
}

function clearInput(){
    var input = document.getElementById('tags');
    input.value = "";
    let options = document.getElementsByTagName('option');
    for(var i = 1; i < options.length; i++){
        options[i].disabled = false;
    }
}

function toMain(){
    window.location.href = 'index.php'
}

function writing(){
    window.location.href = 'writing.php'
}

function auth(){
    window.location.href = 'auth.php'
}

function reg(){
    window.location.href = 'reg.php'
}

function changePass(){
    window.location.href = 'changePass.php'
}