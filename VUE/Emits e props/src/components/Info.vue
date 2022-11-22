<template>
    <br>
    <h1>Props</h1>
    <LifeCycle :email="email" />
</template>

<script>
import LifeCycle from "./LifeCycle.vue";

export default{
    name: "Info", 

    components: {
        LifeCycle,
    },
    data(){
        return{
            email: "pedro212@gmail.com",
        }
    }
}
</script>