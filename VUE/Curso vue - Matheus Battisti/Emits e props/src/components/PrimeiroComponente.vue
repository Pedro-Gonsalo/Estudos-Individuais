<!-- Só pode haver um elemento root (base), por exemplo: se colocar os elementos sem a div vai dar um erro de sintaxe-->

<template>
    <div>
      <h1>Emits</h1>
      <img :src="avatar" :alt="descricao">
      <Pessoa @mudar-imagem="trocarImagem()"/>
      <Info/>
    </div>
</template>
  
<script>
import Pessoa from "./Pessoa.vue";
import Info from "./Info.vue";

  export default {
    name: 'PrimeiroComponente',
    
    components: { 
      Pessoa,
      Info,
    },

    data(){
      return {
        avatar: "/img/avatar.png",
        descricao: "Pedro Gonçalo",
      }
    },

    methods: {
      trocarImagem(){
        if (this.avatar == "/img/avatar.png"){
          this.avatar = "/img/avatar2.png";
        }else{
          this.avatar = "/img/avatar.png";
        }
      }
    }
  }
</script>