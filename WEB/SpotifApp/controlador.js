let conexion = new XMLHttpRequest();
let token = "Bearer";
let url = "https://api.spotify.com/v1/artists/6nS5roXSAGhTGr34W6n7Et";
conexion.open('GET', url, true);
conexion.setRequestHeader('Authorization', token);
conexion.onload = function () {
    let respuesta = JSON.parse(this.responseText);
    //console.log(respuesta);
    document.getElementById("artista").textContent = respuesta["name"];
    document.getElementById("imagen0").src= respuesta["images"][2].url; 
}
conexion.send();

let conexionMus= new XMLHttpRequest();
let tokenMus="Bearer";
let urlMus="https://api.spotify.com/v1/tracks?ids=1S9beER2axKheJ3AMe49Cv%2C1ZqeykOaDmjkldzs7XGR4b%2C7ANO3LRdvefIongRYm5Smz"; 
//etran, where angels fear to tread, white noise
conexionMus.open('GET', urlMus, true);
conexionMus.setRequestHeader('Authorization', tokenMus);

conexionMus.onload= function(){
    let respuestaMus=JSON.parse(this.responseText);
    //console.log(respuestaMus);
    document.getElementById("imagen1").src= respuestaMus["tracks"][0]["album"].images[0].url;
    document.getElementById("imagen2").src= respuestaMus["tracks"][1]["album"].images[0].url;
    document.getElementById("imagen3").src= respuestaMus["tracks"][2]["album"].images[0].url;

    document.getElementById("nombre1").textContent= respuestaMus["tracks"][0].name;
    document.getElementById("nombre2").textContent= respuestaMus["tracks"][1].name;
    document.getElementById("nombre3").textContent= respuestaMus["tracks"][2].name;

    document.getElementById("audio1").src= respuestaMus["tracks"][0]["preview_url"];
    document.getElementById("audio2").src= respuestaMus["tracks"][1]["preview_url"];
    document.getElementById("audio3").src= respuestaMus["tracks"][2]["preview_url"];
}
conexionMus.send();