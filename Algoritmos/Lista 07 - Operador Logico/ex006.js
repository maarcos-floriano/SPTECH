function calcular(){
    var nota = Number(ipt_nota.value);
    var frequencia = Number(ipt_frequencia.value);
    
    // Teste
    // var nota = document.getElementById("ipt_nota").value;
    // var frequencia = document.getElementById("ipt_frquencia").value;

    if (nota>=6 && frequencia>=75) alert("Parabens, aprovado!");
        else alert("Infelizmente, nao foi desta vez");
}