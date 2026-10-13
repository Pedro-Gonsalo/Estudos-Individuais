<!-- Componente central (ele gerencia a aplicação toda) -->

<template>
  <div>
    <Header :esta_logado="true" />
    <PrimeiroComponente /> <!-- TAG do vue para componentes, também pode ser
                        usada assim <primeiro-componente/> -->
    <p>O dado de app é: {{ testando }}</p>
    <LifeCycle/>
    <Pessoa/>
  </div>
</template>

<!-- NUNCA esquecer de exportar -->
<script>
  // Importando componente
  import PrimeiroComponente from "./components/PrimeiroComponente.vue";
  import LifeCycle from "./components/LifeCycle.vue";
  import Pessoa from "./components/Pessoa.vue";
  import Header from "./components/Header.vue";
  
  export default {
    name: "App",
    components: {
      PrimeiroComponente,
      LifeCycle,
      Pessoa,
      Header,
    },
    data(){
      return{
        testando: "Teste",
      }
    }
  }
</script>

<!-- CSS Global -->
<style>
  body{
    background-color: #333;
    color: #fff;
  }
  a{
    color: red;
  }
</style>