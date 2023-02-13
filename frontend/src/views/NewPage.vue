<template>
  <ion-page>
    <ion-header>
      <ion-toolbar>
        <ion-buttons slot="start">
          <ion-back-button defaultHref="/tabs/home/"></ion-back-button>
        </ion-buttons>
        <ion-title>Aufgabe hinzufügen</ion-title>
      </ion-toolbar>
    </ion-header>
    <ion-content :fullscreen="true">
      <div class="container">
        <ion-card class="card">
          <ion-card-header class="header">
            <ion-card-title>Neue Aufgabe
              <img class="new" alt="logo" src="https://cdn-icons-png.flaticon.com/512/891/891509.png" />
            </ion-card-title>
          </ion-card-header>
          <ion-card-content>
            <ion-list>
              <ion-item>
                <ion-grid>
                  <ion-row>
                    <ion-text>
                      <img class="icon" alt="logo" src="https://cdn-icons-png.flaticon.com/512/2799/2799932.png" />
                      Titel</ion-text>
                  </ion-row>
                  <ion-row>
                    <ion-input type="text" placeholder="Titel" v-model="newTask.name"></ion-input>
                  </ion-row>
                </ion-grid>
              </ion-item>
              <ion-item>
                <ion-grid>
                  <ion-row>
                    <ion-text>
                      <img class="icon" alt="logo" src="https://cdn-icons-png.flaticon.com/512/5107/5107639.png" />
                      Beschreibung</ion-text>
                  </ion-row>
                  <ion-row>
                    <ion-input type="text" placeholder="Beschreibung" v-model="newTask.description"></ion-input>
                  </ion-row>
                </ion-grid>
              </ion-item>
              <ion-item>
                <ion-grid>
                  <ion-row>
                    <ion-text>
                      <img class="icon" alt="logo" src="https://cdn-icons-png.flaticon.com/128/8895/8895467.png" />
                      Schulfach</ion-text>
                  </ion-row>
                  <ion-row>
                    <ion-select type="number" placeholder="Beschreibung" v-model="newTask.title">
                      <ion-select-option :key="fach.title" v-for="fach in faecher">{{ fach.title }}</ion-select-option>
                    </ion-select>
                  </ion-row>
                </ion-grid>
              </ion-item>
            </ion-list>
          </ion-card-content>
          <ion-button @click="addTask">Hinzufügen</ion-button>
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
  IonInput,
  IonSelect,
  IonSelectOption,
  alertController
} from "@ionic/vue";
import { useTasks } from "../composables/useAufgaben";
import { useFaecher } from "../composables/useFaecher";


const { tasks, newTask, addTask, finishTask } =
  useTasks();

const { faecher, lehrer } = useFaecher();




</script>

<style>
ion-textarea {
  background-color: lightgrey;
  color: black;
}

.new {
  display: right;
  width: 4%;
  position: absolute;
        right: 20px;
}

.icon {
  display: right;
  width: 3%;
  position: absolute;
        right: 600px;
        top: 5px;
}

.header {
  padding: 25px;
}

.card {
  text-align: left;
  align-self: center;
  width: 80%;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.503);
}

.card:hover {
  --background: rgba(211, 211, 211, 0.38);
}

.container {
  display: flex;
  height: 450px;
}


</style>