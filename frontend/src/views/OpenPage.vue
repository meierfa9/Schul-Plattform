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

    <ion-content :fullscreen="true">
      <ion-header collapse="condense">
        <ion-toolbar>
          <ion-title size="large">Offene Aufgaben</ion-title>
        </ion-toolbar>
      </ion-header>
      <ion-list :key="aufgabe.identity" v-for="aufgabe in tasksOpen">
        <ion-item>
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
} from "@ionic/vue";
import { useTasks } from "../composables/useAufgaben";

const { tasksOpen, finishTask, /*addTask, archiveTask */} =
  useTasks();
</script>
