window.onload = function () {

  const $elementosCarousel = document.querySelectorAll(".carousel-item");
  //Declarando timpo en el que se tarda en mover
  const TIEMPO_INTERVALO = 4* 10000;
  let posicionActual = 0, posicionSiguiente = 1;
  intervalo = setInterval(pasarMargen, TIEMPO_INTERVALO);

  //Función que da movimiento dinamico
  function pasarMargen() {
    posicionActual++;
    posicionSiguiente++;
    posicionSiguiente > $elementosCarousel.length ? posicionSiguiente = 1 : "";
    posicionActual > $elementosCarousel.length ? posicionActual = 1 : "";
    renderizarMargen("carousel-item_" + posicionActual, "carousel-item_" + posicionSiguiente);
  }

  //Función que controla el movimiento
  function renderizarMargen(actual, siguiente) {
    document.getElementById(actual).classList.remove("activate");
    document.getElementById(siguiente).classList.add("activate");
  }

  let $botonRetroceder = document.querySelector('#retroceder');
  let $botonAvanzar = document.querySelector('#avanzar');

  //Función que da movimiento por el btn de avanzar
  $botonAvanzar.onclick = function (e) {
      $margenActual = document.querySelector('.activate');
      posicionSiguienteAux = 1, posicionActualAux = 0;
      $elementosCarousel.forEach(elementoCarousel => {
          posicionActualAux++;
          posicionSiguienteAux++;
          if ($margenActual == elementoCarousel) {
              posicionActualAux == 4 ? posicionSiguienteAux = 1 : "";
              renderizarMargen("carousel-item_" + posicionActualAux, "carousel-item_" + posicionSiguienteAux);
            }
        });
    }
    
  //Función que da movimiento por el btn de retoceder
  $botonRetroceder.onclick = function (e) {
    console.log("mensaje btn retoceder");
    $margenActual = document.querySelector('.activate');
    console.log($margenActual);
    posicionSiguienteAux = 4, posicionActualAux = 2;
    $elementosCarousel.forEach(elementoCarousel => {
      posicionActualAux--;
      posicionSiguienteAux--;
      console.log();
      console.log("increAA", posicionActualAux, "increSA", posicionSiguienteAux);
      if ($margenActual == elementoCarousel) {
        posicionActualAux == -1 ? posicionActualAux = 3 : posicionActualAux == 0 ? posicionActualAux = 2 : "";
        posicionSiguienteAux == 1 ? posicionSiguienteAux = 2 : posicionSiguienteAux == 2 ? posicionSiguienteAux = 1 : "";
        console.log("auxActual", posicionActualAux, "auxSiguiente", posicionSiguienteAux);
        renderizarMargen("carousel-item_" + posicionActualAux, "carousel-item_" + posicionSiguienteAux);
      }
    });
  }
}