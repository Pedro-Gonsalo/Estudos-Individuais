const MyNameApp = { // Instancia de vue que faz o HTML entender que está sendo importado esse cara para lá
    data() { //Retorna dados para o Front-End da aplicação
        return{
            name: "",
            age: 30,
            input_name: "", // (VEM PRA CÁ) - recebe os dados que serão atualizados em tempo real

        }
    },

    methods: { // Funções da aplicação
        submitForm(e) {
            e.preventDefault(); // Evento do js que não deixa o form ser enviado para o servidor
            console.log(this.input_name);
            this.name = this.input_name; // transferindo o valor do input diretamente para a aplicação

        }
    }
}

// Criando o app na div app
Vue.createApp(MyNameApp).mount("#app");