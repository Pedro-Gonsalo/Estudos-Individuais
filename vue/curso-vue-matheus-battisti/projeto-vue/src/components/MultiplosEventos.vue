<template>
    <div>
        <button @click="primeiro(txt1, txt_button1), segundo(txt2, txt_button2), terceiro()">
            {{button}}
        </button>
        <p>{{ multiplos_eventos }}</p>
    </div>
</template>

<script>
import { thisTypeAnnotation } from '@babel/types';

    export default{
        name: "MultiplosEventos",

        data(){
            return{
                multiplos_eventos: "",
                txt1: "Primeiro evento ativado!",
                txt2: "Segundo evento ativado!",
                // Texto botão                
                button: "Ativar múltiplos eventos",
                // Texto do botão ao ativar os eventos                
                txt_button1: "Primeiro evento ativado",
                txt_button2: "Segundo evento ativado",
            }
        },

        methods: {
            primeiro(txt1, txt_button1){
                this.multiplos_eventos = txt1;
                this.button = txt_button1;
            },
            segundo(txt2, txt_button2){
                setTimeout(() => this.multiplos_eventos = txt2, 1000);
                setTimeout(() => this.button = txt_button2, 1000);
            },
            terceiro(){
                setTimeout(() => this.multiplos_eventos = "", 2000);
            }
        }
    }
</script>

<style scoped>
    div {
        margin: 100px;
    }
</style>