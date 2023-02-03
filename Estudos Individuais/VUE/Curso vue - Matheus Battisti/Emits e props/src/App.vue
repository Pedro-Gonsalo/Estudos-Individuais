<!-- Componente central (ele gerencia a aplicação toda) -->

<template>
  <div>
    <PrimeiroComponente/>
  </div>
</template>

<!-- NUNCA esquecer de exportar -->
<script>
  // Importando componente
  import PrimeiroComponente from "./components/PrimeiroComponente.vue";
  
  export default {
    name: "App",
    components: {
      PrimeiroComponente,
    },
  }
</script>

<!-- CSS Global -->
<style>
  body{
    width: 100vw;
    height: 100vh;
    background-color: #333;
    color: #fff;
  }
</style>