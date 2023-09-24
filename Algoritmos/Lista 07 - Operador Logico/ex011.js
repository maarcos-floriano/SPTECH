function calcular() {
    var passagem = Number(qtdPassagens.value);
    var valorPassagem = passagem * 4.4;
    if (passagem >= 8 && passagem <= 50) {

      if (passagem >= 8 && passagem <= 19) {
        valorPassagem -= valorPassagem * 0.03;
      } else if (passagem >= 20 && passagem <= 49) {
        valorPassagem -= valorPassagem * 0.05;
      } else if (passagem >= 50) {
        valorPassagem -= valorPassagem * 0.07;
      }
      msg.innerHTML = `Total a pagar: R$${valorPassagem.toFixed(2)}`
    }else alert("Quantidade inválida para o Fidelidade!");
  }