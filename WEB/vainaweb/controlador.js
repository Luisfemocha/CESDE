let conexion = new XMLHttpRequest();
let token = "bearer BQCO1vbV_RkXAGoLZSY0NTl8mlQqquLvC6cd8hHIDh8WcyN192o2WVdhS5PyAcToc3hTjPfKv5AB4OsmBvGV9a62iLQ7euzvrEAlVSd8GWjM_R7YcP4M4XZCHDK1QNIlpq_997RIzzH3AYBP";
let url = "https://api.spotify.com/v1/artists/6nS5roXSAGhTGr34W6n7Et";
conexion.open('GET', url, true);
conexion.setRequestHeader('Authorization', token);
conexion.onload = function () {
    let respuesta = JSON.parse(this.responseText);
    document.getElementById("artista").textContent = respuesta["name"];
    document.getElementById("imagen0").src= respuesta["images"][2].url; 
}
conexion.send();

let conexionMus= new XMLHttpRequest();
let tokenMus="bearer BQDK35EsPFNKH-8Pw02yL8mhEhmbUD_AC1WLCdj9qRT2EbfP3ufWIHGxeikblm-Ht0ry4WzeebmPGfYwLGyqMyyPSGgK_k083xi2ACo3_0FtbP5rJicK5mwu7ABz23uYAgSb6KUZF-k0jCT-";
let urlMus="https://api.spotify.com/v1/tracks?ids=1S9beER2axKheJ3AMe49Cv%2C5EWFuo4ObEnfndc57sTuIo%2C1ZqeykOaDmjkldzs7XGR4b";
conexionMus.open('GET', urlMus, true);
conexionMus.setRequestHeader('Authorization', tokenMus);
conexionMus.onload= function(){
    let respuestaMus=JSON.parse(this.responseText);
    console.log(respuestaMus);
    document.getElementById("imagen1").src= respuestaMus["tracks"][0]["album"].images[0].url;
    document.getElementById("imagen2").src= respuestaMus["tracks"][1]["album"].images[0].url;
    document.getElementById("imagen3").src= respuestaMus["tracks"][2]["album"].images[0].url;

    document.getElementById("nombre1").textContent= respuestaMus["tracks"][0].name;
    document.getElementById("nombre2").textContent= respuestaMus["tracks"][1].name;
    document.getElementById("nombre3").textContent= respuestaMus["tracks"][2].name;

    document.getElementById("audio1").url= respuestaMus["tracks"][0].url;
    
}

conexionMus.send();