<!-- Só pode haver um elemento root (base), por exemplo: se colocar os elementos sem a div vai dar um erro de sintaxe-->

<template>
    <div>
        <h2>Esta é a descrição da pessoa: {{ nome }}</h2>

        <!-- Forma HARDCODE props
        <Info compEmail="carlos@email.com" /> -->

        <Info :email="email" :esta_trabalhando="false" />
        <Form />
    </div>
</template>

<script>
    import Info from './Info.vue';
    import Form from './Form.vue';

    export default{
        name: "Pessoa",
        components: {
            Info,
            Form,
        },
        data() { // Retornando dados
            return {
                nome: "Pedro",
                email: "pedro.gonsalo@gmail.com",
            }
        }
    }
</script>