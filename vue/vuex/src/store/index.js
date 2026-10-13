import { createStore } from 'vuex'

export default createStore({
  state: { // Onde ficam os dados
    user: [
      {
        name: 'Pedro Henrique',
        email: 'pedro@gmail.com',
        age: 14
      },
      {
        name: 'Carlos',
        email: 'carlos@gmail.com',
        age: 30
      }
    ]
  },
  mutations: { // Onde os dados são modificados
    addUser(state, novoUser) {
      state.user.push(novoUser);

      // console.log(this.state.user);
    },

    changeUser(){
      this.state.user[0].name = "Juliana";
      this.state.user[0].email = "juliana@gmail.com";
      this.state.user[0].age = 16;

      // console.log(this.state.user);
    }
  },
  getters: { // Computed (fica de olho no valor nas variaveis e quando elas são alteradas, atualiza seus valores)
    SomaAge(state) {
      let result = 0

      for (let x = 0; x < state.user.length; x++){
        result += state.user[x].age;
      }

      return result;
    }
  },
  actions: {
    addUser(state, novoUser) { 
      return new Promise((resolve) => {
        setTimeout( () => {
          this.commit("addUser", novoUser);
          resolve();

          console.log(this.state.user);          
        }, 3000)
      })
    },
  },
})



// OBSERVAÇÕES

// --> Actions podem fazer chamadas assíncronas. Actions podem ter ações 
// colaterais tais como habilitar o loading antes de chamar a API e 
// desabilitá-lo depois de obter os dados. 

// --> Mutations devem ser funções puras, assim não podem ter ações 
// colaterais tais como chamar outras funções ou executar outras lógicas.
