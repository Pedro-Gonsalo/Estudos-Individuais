<template>
    <div>
        <h2>Meu Formulário</h2>
        <form action="" @submit="enviarFormulario($event)">
            <div>
                <input type="text" v-model="name">
            </div>
            <div>
                <input type="text" v-model="email">
            </div>
            <div>
                <Submit/>
            </div>
        </form>

        <p>Conteúdo</p>
    </div>
</template>

<script>
    import InputText from './Form/InputText.vue';
    import Submit from './Form/Submit.vue';

    export default{
        name: "Form",
        components: {
        InputText,
        Submit,
        },
        data(){
            return{
                name: "",
                email: "",
            }
        },
        // Métodos
        methods: {
            enviarFormulario(e) {
                e.preventDefault(); // Cancela o evento padrão, que é a atualização da página
                
                const name = this.name;
                const email = this.email;

                console.log("Formulário enviado");
                console.log("O nome é: " + name);
                console.log("O email é: " + email);

                // Ajax

                // Inserir no banco de dados
            }
        }
    }
    
</script>

<style scoped>
p {
    margin: 150px;
}
</style>