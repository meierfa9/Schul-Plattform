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
      <ion-header collapse="condense">
        <ion-toolbar>
          <ion-title size="large">Erledigte Aufgaben</ion-title>
        </ion-toolbar>
      </ion-header>
      <ion-list :key="aufgabe.identity" v-for="aufgabe in tasksDone">
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
                  >Offen</ion-button
                >
                <ion-badge color="success" v-if="aufgabe.done"
                  >Erledigt</ion-badge
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
  IonBadge,
} from "@ionic/vue";
import { useTasks } from "../composables/useAufgaben";

const { tasksDone /*addTask, archiveTask */ } = useTasks();
</script>

<style scoped>

ion-badge {
  font-weight: 2;
  font-size: 10pt;
  text-transform:uppercase;
  text-align: center;
  padding-block-start: 6px;
  background-color: success;
  height:25px;
  width: 85px;
}
</style>
