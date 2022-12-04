<!-- Só pode haver um elemento root (base), por exemplo: se colocar os elementos sem a div vai dar um erro de sintaxe-->

<template>
  <div>
    <button @click="$emit('mudarImagem')">Trocar Imagem</button>
  </div>
</template>

<script>
    export default {
        name: "Pessoa",
    };
</script>

<style scoped>
    button {
        color: #000;
    }
</style>