<template>
  <ion-page>
    <ion-content :fullscreen="true" padding>
      <ion-grid>
        <ion-row>
          <ion-col>
            <div class="container">
              <ion-card class="card">
                <ion-card-header>
                  <ion-card-title>Schulplattform
                    <img alt="logo" src="https://cdn-icons-png.flaticon.com/128/2602/2602414.png" />
                  </ion-card-title>
                  <ion-card-subtitle>Login</ion-card-subtitle>
                </ion-card-header>

                <ion-card-content>
                  <div padding>
                    <ion-item>
                      <ion-input type="text" placeholder="Benutzername" v-model="username"></ion-input>
                    </ion-item>
                    <ion-item>
                      <ion-input type="password" placeholder="Passwort" v-model="password"></ion-input>
                    </ion-item>
                  </div>
                </ion-card-content>
                  <ion-button class="button" @click="login">Login</ion-button>
              </ion-card>
            </div>
          </ion-col>
        </ion-row>
      </ion-grid>
    </ion-content>
  </ion-page>
</template>

<script setup lang="ts">
import {
  IonCard,
  IonPage,
  IonContent,
  IonInput,
  IonRow,
  IonCol,
  IonGrid,
  IonButton,
  IonItem,
} from "@ionic/vue";
import { useLogin } from "../composables/useLogin";

const { username, password, login } = useLogin();

</script>

<style scoped>
.container {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 500px;
}

.card {
  text-align: left;
  align-self: center;
  width: 60%;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.503);
}

.card:hover {
  --background: rgba(211, 211, 211, 0.38);
}


img {
  display: right;
  width: 5%;
  position: absolute;
        top: 10px;
        right: 20px;
}

.button {
  color: black;
  --background: lightgrey;
  padding: 5px 30px;
}
.button:hover {
  padding: 5px 30px;
  --background: rgb(0, 106, 255);
  color: white;
}

</style>