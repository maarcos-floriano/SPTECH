function calcular() {
    //        var alturaInicial = document.getElementById("alturaInicial").value;
    //        var alturaFinal = document.getElementById("alturaFinal").value;
    var alturaInicial = Number(ipt_alturaInicial.value);
    var alturaFinal = Number(ipt_alturaFinal.value);

    var nomePiloto = ipt_nomePiloto.value;
    var alturaPiloto = ipt_alturaPiloto.value;

    if (alturaInicial > 1 && alturaFinal > alturaInicial) {
      if (alturaPiloto >= alturaInicial && alturaPiloto <= alturaFinal) {
        msg.innerHTML = `O candidato ${nomePiloto} com altura de ${alturaPiloto} participará do processo de seleção de piloto`;
      } else
        msg.innerHTML = `Infelizmente o candidato ${nomePiloto} com altura de ${alturaPiloto} não atende os requisitos`;
    } else alert("Dados em nexo, tente novamente");
  }