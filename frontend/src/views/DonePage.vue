<template>
  <ion-page>
    <ion-header>
      <ion-toolbar>
        <ion-buttons slot="start">
          <ion-back-button defaultHref="/tabs/home/"></ion-back-button>
        </ion-buttons>
        <ion-title>Erledigte Aufgaben</ion-title>
      </ion-toolbar>
    </ion-header>

    <ion-content :fullscreen="true">
      <ion-item class="label">
        <ion-label> Erledigte Aufgaben</ion-label>
        <ion-input></ion-input>
      </ion-item>

      <div class="container" v-for="aufgabe in tasks" :key="aufgabe.id">
        <ion-card class="card" v-if="aufgabe.done">
          <ion-card-header>
            <ion-card-subtitle>{{ aufgabe.title }}</ion-card-subtitle>
            <ion-card-title
              >{{ aufgabe.name }}
              <ion-button :disabled="true" class="done" v-if="aufgabe.done"
                >Erledigt</ion-button
              >
            </ion-card-title>
            <ion-card-subtitle>{{ aufgabe.description }}</ion-card-subtitle>
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
  IonButton,
  IonGrid,
  IonRow,
  IonCol,
  IonCard,
  IonBadge,
} from "@ionic/vue";
import { useTasks } from "../composables/useAufgaben";

const { tasksDone, tasks } = useTasks();
</script>

<style scoped>
ion-badge {
  font-weight: 2;
  font-size: 10pt;
  text-transform: uppercase;
  text-align: center;
  padding-block-start: 6px;
  background-color: success;
  height: 25px;
  width: 85px;
}

.container {
  display: flex;
  align-items: center;
  justify-content: center;
}

.card {
  text-align: left;
  align-self: center;
  width: 500px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.503);
}

.card:hover {
  --background: rgba(211, 211, 211, 0.38);
}

.done {
  color: white;
  --background: green;
  padding: 5px 30px;
  display: right;
  position: absolute;
  top: -30px;
  right: 10px;
}

.label {
  font-size: 20px;
}
</style>
