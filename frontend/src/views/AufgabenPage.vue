<template>
  <ion-page>
    <ion-header>
      <ion-toolbar>
        <ion-buttons slot="start">
          <ion-back-button defaultHref="/tabs/uebersicht/"></ion-back-button>
        </ion-buttons>
        <ion-title>{{ fach }}</ion-title>
      </ion-toolbar>
    </ion-header>
    <ion-content :fullscreen="true">
      <ion-item>
        <ion-label class="label"> Offene Aufgaben</ion-label>
        <ion-input></ion-input>
      </ion-item>

      <ion-header collapse="condense">
        <ion-toolbar>
          <ion-title size="large">{{ fach }}</ion-title>
        </ion-toolbar>
      </ion-header>

      <div class="container" v-for="aufgabe in tasks" :key="aufgabe.id">
        <ion-card v-if="aufgabe.title === fach && !aufgabe.done">
          <ion-card-header>
            <ion-card-title
              >{{ aufgabe.name }}
              <ion-button class="open" @click="finishTask(aufgabe)"
                >Offen</ion-button
              >
              <ion-button class="done" v-if="aufgabe.done">Erledigt</ion-button>
            </ion-card-title>
            <ion-card-subtitle>{{ aufgabe.description }}</ion-card-subtitle>
            <ion-card-subtitle>{{
              aufgabe.teacher?.name + " " + aufgabe.teacher?.surname
            }}</ion-card-subtitle>
          </ion-card-header>
        </ion-card>
      </div>
    </ion-content>
  </ion-page>
</template>
  
<script setup lang="ts">
import {
  IonBackButton,
  IonPage,
  IonHeader,
  IonToolbar,
  IonTitle,
  IonContent,
  IonCol,
  IonRow,
  IonGrid,
  IonItem,
  IonList,
  IonButton,
  IonInput,
} from "@ionic/vue";

import { useTasks } from "../composables/useAufgaben";
import { useRoute } from "vue-router";
import { useFaecher } from "../composables/useFaecher";

const { tasks, finishTask } = useTasks();
const { faecher, lehrer } = useFaecher();
const route = useRoute();
const { fach } = route.params;
</script>
<style scoped>
ion-card {
  text-align: left;
  align-self: center;
  width: 500px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.503);
}

ion-card:hover {
  --background: rgba(211, 211, 211, 0.38);
}
.container {
  display: flex;
  align-items: center;
  justify-content: center;
}
.open {
  color: white;
  --background: red;
  padding: 5px 30px;
  display: right;
  position: absolute;
  top: -10px;
  right: 15px;
}

.open:hover {
  padding: 5px 30px;
  --background: green;
  color: white;
}

.done {
  color: white;
  --background: green;
  padding: 5px 30px;
  display: right;
  position: absolute;
  top: -10px;
  right: 15px;
}

.label {
  font-size: 20px;
}
</style>