<!-- Só pode haver um elemento root (base), por exemplo: se colocar os elementos sem a div vai dar um erro de sintaxe-->

<template>
    <div>
        <h1>Olá Vue!</h1>
        <Reutilizacao /> 
        <MultiplosEventos />
        <Reutilizacao />
        <Reutilizacao />
        <Reutilizacao />
        <Reutilizacao />
    </div>
</template>
  
<script>
  import MultiplosEventos from './MultiplosEventos.vue';
  import Reutilizacao from './Reutilizacao.vue';

  export default {
    components: { 
        MultiplosEventos, 
        Reutilizacao 
    },
    name: 'PrimeiroComponente',
  }
</script>