<template>
    <div>
        <!-- HARDCODE: <p>{{compEmail}} - {{ email }}</p> -->
        <!-- Forma dinâmica -->
        
        <!-- v-if e v-else precisam sempre estar juntos, um debaixo do outro -->
        <p v-if="esta_trabalhando == true">Estou trabalhando no momento.</p>
        <p v-else>Estou em busca de novas oportunidades!</p>
        <p>Utilizo as seguintes tecnologias para Back-End: </p>
        <ul>
            <!-- v-for se diretamente no elemento que será repetido, ao invés do elemento pai -->
            <li v-for="(technology, index) in backend_technologies" v-bind:key="index">
                {{ technology }}
            </li>
            <!-- <li>A mais</li> -->
        </ul>
        <p>Utilizo as seguintes tecnologias para Front-End: </p>
        <ul>
            <!-- v-for se diretamente no elemento que será repetido, ao invés do elemento pai -->
            <li v-for="technology in frontend_technologies" :key="technology.id">
                {{ technology.language }}
            </li>
            <!-- <li>A mais</li> -->
        </ul>

        <!-- v-show é um if/else mais prático, ele mostra se for verdadeiro e esconde se for false -->
        <div>
            <button @click="showEmail">{{textoBotao}}</button> <!-- @click = diretiva para click -->
        </div>
        <p v-show="mostrar_email">Mande uma mensagem para: {{email}}</p>
        <!-- v-bind -->
        <p>Para acessar meu portifólio, <a v-bind:href="meu_link" target="_blank">clique aqui</a></p>
        <!-- OUUUUUUUUUUUUUU 
        <a :href="meu_link" target="_blank"> -->
        
        <Picture />
        
    </div>
</template>

<script>
    import Picture from './Picture.vue';
    
    export default{
        name: "Info",
        components: {
            Picture,
        },

        props: {
            // HARDCODE props --- compEmail: String,
            email: String,
            esta_trabalhando: Boolean, // True: vai aparecer que está trabalhando | False: vai esconder o parágrafo
        },

        data(){
            return{
                mostrar_email: false,
                // HARDCODE props ---- email: "pedro.gonsalo@gmail.com",
                meu_link: "https://google.com",
                textoBotao: "Mostrar email",

                // Listas, 2 formas
                backend_technologies: ["JavaScript", "PHP", "Python"],
                frontend_technologies: [
                    {id: 1, language: "HTL"},
                    {id: 2, language: "CSS"},
                    {id: 3, language: "Vue"}
                ]
            }
        },

        // Funções
        methods: {
            showEmail(){
                this.mostrar_email = !this.mostrar_email; //Se for true quando clicar fica falso e vice versa
                if (!this.mostrar_email) {
                    this.textoBotao = "Mostra e-mail";
                }
                else{
                    this.textoBotao = "Esconder e-mail";
                }
            }
        }
    }
</script>