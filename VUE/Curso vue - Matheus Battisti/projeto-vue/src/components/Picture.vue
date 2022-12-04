<!-- TROCANDO IMAGEM -->

<template>
    <div>
        <img :src="avatar" :alt="descricao">
        <!-- <Reutilizacao/> -->

        <!-- MudarImagem = componente
            @mudar-imagem = emit do componente MudarImagem
            trocarImagem = método do componente Picture -->
        <MudarImagem @mudar-imagem="trocarImagem"/>
    </div>
</template>

<script>
    import Reutilizacao from './Reutilizacao.vue';
    import MudarImagem from './MudarImagem.vue';
    
    export default{
        name: "Picture",
        components: {
            Reutilizacao,
            MudarImagem,
            MudarImagem
        },
        data(){
            return{
                avatar: "/img/avatar.png",
                descricao: "Pedro Gonçalo",
            }
        },
        methods: {
            trocarImagem(){
                this.avatar ="/img/avatar2.png"
            }
        }
    }
</script>