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
      <ion-header collapse="condense">
        <ion-toolbar>
          <ion-title size="large">{{ fach }}</ion-title>
        </ion-toolbar>
      </ion-header>
      <ion-list>
        <ion-item :key="aufgabe.identity" v-for="aufgabe in tasks">
          <ion-grid>
            <ion-row>
              <ion-col>
                {{ aufgabe.name }}
              </ion-col>
              <ion-col>
                <ion-button
                  color="danger"
                  v-if="!aufgabe.done"
                  @click="finishTask(aufgabe)">Offen</ion-button>
            
                <ion-button
                  color="success"
                  v-if="aufgabe.done"
                  >Erledigt</ion-button
                >
              </ion-col>
            </ion-row>
          </ion-grid>
        </ion-item>
      </ion-list>
      <ion-item>
      </ion-item>
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

const { newTask, tasks, getTasks, finishTask, /*addTask, archiveTask */} =
  useTasks();

const route = useRoute();
const { fach } = route.params;
</script>