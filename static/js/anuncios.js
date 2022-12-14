

var peliculas = {
    "Beast":{
    anio: "2022",
    pais: "Estados Unidos",
    clasificación: "B",
    duracion: "93",
    genero: "Aventura, Drama, Thriller",
    thrialler:"https://www.youtube.com/watch?v=rM0aUSHSTf0",
    img:"static/img/bestia.jpg",
    sinopsis: "Un padre y sus dos hijas adolescentes se ven perseguidos por un enorme león rebelde que intenta demostrar que la sabana solo tiene un depredador ápice." 
    },
    "Beast0":{
    anio: "2022",
    pais: "Estados Unidos",
    clasificación: "B",
    duracion: "93",
    genero: "Aventura, Drama, Thriller",
    thriller:"https://www.youtube.com/watch?v=rM0aUSHSTf0",
    img:"static/img/bestia.jpg",
    sinopsis: "Un padre y sus dos hijas adolescentes se ven perseguidos por un enorme león rebelde que intenta demostrar que la sabana solo tiene un depredador ápice." 
    },
    "Beast1":{
    año: "2022",
    pais: "Estados Unidos",
    clasificación: "B",
    duracion: "93",
    genero: "Aventura, Drama, Thriller",
    thriller:"https://www.youtube.com/watch?v=rM0aUSHSTf0",
    img:"static/img/bestia.jpg",
    sinopsis: "Un padre y sus dos hijas adolescentes se ven perseguidos por un enorme león rebelde que intenta demostrar que la sabana solo tiene un depredador ápice." 
    },
    "Beast2":{
    "anio": "2022",
    "pais": "Estados Unidos",
    "clasificación": "B",
    "duracion": "93",
    "genero": "Aventura, Drama, Thriller",
    "thriller":"https://www.youtube.com/watch?v=rM0aUSHSTf0",
    "img":"static/img/bestia.jpg",
    "sinopsis": "Un padre y sus dos hijas adolescentes se ven perseguidos por un enorme león rebelde que intenta demostrar que la sabana solo tiene un depredador ápice." 
    },
  }

  var $sidebar = document.querySelector(".carouselAnuncios");
  console.log($sidebar)
  var img = document.createElement("img");
  var count = 1;
  
  //Se recorre lista de elementos
  var listaTitulos = Object.entries(peliculas).forEach(([titulo,datos]) => {

    //Se declaran elementos a crear
    var div = document.createElement("div");
    var img = document.createElement("img");
    var a = document.createElement("a");
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
    a.setAttribute("href", datos["thriller"]);
    a.setAttribute("target","_blank");
    img.setAttribute("src", datos["img"]);
    img.setAttribute("class", "img-anuncio");
    img.setAttribute("alt", `'portada_pelicula_'${titulo}`);
    const text = document.createTextNode(titulo);
    const resumen = document.createTextNode(datos["sinopsis"]);
    
    //Se da orden deseado a los elementos
    a.appendChild(img); 
    h3.appendChild(text); 
    p.appendChild(resumen); 
    div.appendChild(a); 
    div.appendChild(h3); 
    div.appendChild(p); 
    $sidebar.appendChild(div); 

    count = count + 1;


  });





