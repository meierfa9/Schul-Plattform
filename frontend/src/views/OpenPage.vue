<template>
  <ion-page>
    <ion-header>
      <ion-toolbar>
        <ion-buttons slot="start">
          <ion-back-button defaultHref="/tabs/home/"></ion-back-button>
        </ion-buttons>
        <ion-title>Offene Aufgaben</ion-title>
      </ion-toolbar>
    </ion-header>
    <ion-content>
    <ion-item>
      <ion-label class="label">
        offene Aufgaben</ion-label>
        <img class="labelimg" alt="todo"
        src="https://cdn-icons-png.flaticon.com/512/2387/2387757.png" />
      <ion-input></ion-input>
    </ion-item>

      <ion-content :fullscreen="true">
        <ion-header collapse="condense">
          <ion-toolbar>
            <ion-title size="large">Offene Aufgaben</ion-title>
          </ion-toolbar>
        </ion-header>

        <div v-for="aufgabe in tasksOpen" :key="aufgabe.id">
          <ion-card class="card">
            <ion-card-header>
              <ion-card-title>{{ aufgabe.name }}
                <ion-button class="open" @click="finishTask(aufgabe)">Offen</ion-button>
                <ion-button class="done" v-if="aufgabe.done">Erledigt</ion-button>
              </ion-card-title>
              <ion-card-subtitle>{{ aufgabe.description }}</ion-card-subtitle>
            </ion-card-header>
          </ion-card>
        </div>
      </ion-content>
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
  IonItem,
  IonList
} from "@ionic/vue";
import { useTasks } from "../composables/useAufgaben";
const { tasks, tasksOpen, finishTask, /*addTask, archiveTask */ } =
  useTasks();

</script>

<style scope>
.card {
  text-align: left;
  align-self: center;
  width: 40%;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.503);
}

.card:hover {
  --background: rgba(211, 211, 211, 0.38);
}

.open {
  color: white;
  --background: red;
  padding: 5px 30px;
  display: right;
  position: absolute;
  top: 5px;
  right: 40px;
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
  top: 5px;
  right: 40px;
}

.label {
  font-size: 20px;
}

.labelimg {
  width: 2%;
  position: absolute;
  left: 200px;
  top: 7px;
}
</style>
