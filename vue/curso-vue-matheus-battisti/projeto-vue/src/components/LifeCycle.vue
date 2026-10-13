<template>
    <h1>Meu nome é: {{ nome }} </h1>   
</template>

<script>
    export default{
        name: "LifeCycle",
        data(){
            return{
                nome: "Ainda não sei"
            }
        },
        // Método Hook (LifeCyle Hook)
        created(){
            // setTimeout permite programar a execução de uma função para após um determinado tempo dado em milissegundos
            setTimeout(() => {
                this.nome = "Pedro";
            }, 1000)

            this.lifeCycle();
        },
        mounted(){
            setTimeout(() => {
                this.nome = "Carlos";
            }, 2000)

            this.lifeCycle();
        },

        methods: {
            lifeCycle(){
                console.log("Executou");
            }
        }
    }
</script>