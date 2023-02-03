<template>
    <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Projetos</a></li>
        <li><a href="#">Contato</a></li>
        <li v-if="esta_logado"><a href="#">Meu perfil</a></li>
    </ul>
</template>

<script>
    export default{
        name: "Header",
        props: ["esta_logado"],
    }
</script>

<!-- Estilo scoped (específico) -->
<style scoped>
    ul{
        list-style: none;
        display: flex;
        background-color: rgba(0, 0, 0, .5);
    }
    
    li{
        margin-right: 10px;
    }

    a {
        color: #ddd;
        text-decoration: none;
        transition: .5s;
    }

    a:hover{
        color: turquoise;
    }

</style>