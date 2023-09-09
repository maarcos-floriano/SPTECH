function calcular() {

    var servidores = Number(ipt_server.value);
    var hacks = Number(servidores / 3)
    var arCondicionado = Number(ipt_ar.value);
    var consumoKWH = Number(arCondicionado * 576);
    var consumoReais = Number(consumoKWH) * 0.4;

    textCard.innerHTML = `
        <div class="msg-informativa text-normal">
            Calculamos que o seu gasto mensal com os ar-condicionados é de em media R$ ${consumoReais} 
            <br>
            <br>
            Considerando que voce possui ${servidores} servidores, isso bem organizado seria necessario ${hacks} hacks para gerenciar bem, e um ar-condicionado por hack
            <br>
            <br>
            A instalação do nosso projeto, é feita por hack, a cada um hack sera necessario um sensor o custo final seria de R$ ${hacks*1000}
        </div>
        <button class="botao" onclick="voltar()">Voltar</button>
`;
  }
  function voltar() {
    textCard.innerHTML = `
        <div></div>
        <article class="centralizar-coluna">
            <p class="text">Quatos ar-condicionados voce tem na sala ?</p>
            <input type="number" class="ipt" id="ipt_ar">
        </article>
        <article class="centralizar-coluna">
            <p class="text">Quantos servidores voce tem na sala ?</p>
            <input type="number" class="ipt" id="ipt_server">
        </article>
        <button class="botao" onclick="calcular()">Calcular</button>
`;
  }