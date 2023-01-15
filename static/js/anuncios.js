import peliculas from '../peliculas1.json' assert { type: 'json' };
let pelis = peliculas.peliculas
  var $sidebar = document.querySelector(".carouselAnuncios");
  
  var count = 1;
    
  //Se recorre lista de elementos
  var listaTitulos = pelis.forEach((e,i) => {
    console.log(e,i)
    //Se declaran elementos a crear
    var div = document.createElement("div");
    var img = document.createElement("img");
    var a = document.createElement("a");
    var verMas = document.createElement("a");
    var p = document.createElement("p");
    var h3 = document.createElement("h3");

    if (count == 1) { 
      div.setAttribute("class","carousel-item activate");
      div.setAttribute("style", "display: none;");
    }else{
      div.setAttribute("class","carousel-item");
      div.setAttribute("style", "display: none;");
    }
 
    //Se insertan atributos y otros elementos necesarios
    div.setAttribute("id", `carousel-item_${count}`);
    a.setAttribute("href", e.trailer);
    a.setAttribute("target","_blank");
    console.log("href",  e.trailer);
    img.setAttribute("src", `${ e.img}`);
    img.setAttribute("class", "img-anuncio");
    img.setAttribute("alt", `portada_pelicula_${e.nombre}`);
    verMas.setAttribute("class", "verMas");
    verMas.setAttribute("href", e.trailer);
    console.log("href", e.trailer);
    verMas.setAttribute("target","_blank");
    const text = document.createTextNode(e.nombre);
    const resumen = document.createTextNode(e.sinopsis);
    const verMasDiv = document.createTextNode("   Ver trailer... ");
    verMas.appendChild(verMasDiv);
    
    //Se da orden deseado a los elementos
    a.appendChild(img); 
    h3.appendChild(text); 
    p.appendChild(resumen); 
    div.appendChild(a); 
    div.appendChild(h3); 
    div.appendChild(p); 
    div.appendChild(verMas); 
    $sidebar.appendChild(div); 

    count = count + 1;


  });