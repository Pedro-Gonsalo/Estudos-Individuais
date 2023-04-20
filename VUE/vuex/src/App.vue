<template>
  <h1>
    {{ $store.state.user[0].name }}
  </h1>

  <h2>
    Soma das idades: {{ idades }}
  </h2>

  <button @click="addUser">Mutation - ADD USER</button>
  <button @click="changeUser" style="margin-left: 10px;">Mutation - CHANGE USER</button>
  <button @click="SomaIdade" style="margin-left: 10px;">Soma idades</button>
  <button @click="addUserAction" style="margin-left: 10px;">ADD USER - Action</button>
  <hr><br>

  <nav>
    <router-link to="/">Home</router-link> |
    <router-link to="/about">About</router-link>
  </nav>
  <router-view/>
</template>

<script>

export default{
  data(){
    return{
      idades: 0,
    }
  },

  methods: {
    addUser(){
      const nemUser = {
        name: "Roberto", 
        email: "roberto@gmail.com", 
        age: 56
      }

      this.$store.commit("addUser", nemUser);
    },

    changeUser(){
      this.$store.commit("changeUser");
    },

    SomaIdade(){
      this.idades = this.$store.getters.SomaAge;
    },

    addUserAction(){
      const nemUser = {
        name: "Ana", 
        email: "ana@gmail.com", 
        age: 31
      }

      this.$store.dispatch("addUser", nemUser).then(()=>{
        alert("Terminou com sucesso");
      }) ;
    }
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

nav {
  padding: 30px;
}

nav a {
  font-weight: bold;
  color: #2c3e50;
}

nav a.router-link-exact-active {
  color: #42b983;
}
</style>
