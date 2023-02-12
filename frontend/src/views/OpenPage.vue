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
      <ion-list>
        <div :key="aufgabe.id" v-for="aufgabe in tasks">
          <ion-item v-if="!aufgabe.done ">
          <ion-grid>
            <ion-row>
              <ion-col>
                {{ aufgabe.name }}
              </ion-col>
              <ion-col>
                {{ aufgabe.description }}
              </ion-col>
              <ion-col>
                {{ aufgabe.title}}
              </ion-col>
              <ion-col>
                <ion-button color="danger" @click="finishTask(aufgabe)">Offen</ion-button>
              </ion-col>
            </ion-row>
          </ion-grid>
        </ion-item>
      </div>
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
  IonItem,
  IonList
} from "@ionic/vue";

import { useTasks } from "../composables/useAufgaben";
import { useRoute } from "vue-router";
import { useFaecher } from "../composables/useFaecher";

const { tasks, finishTask } = useTasks();
const { faecher, lehrer } = useFaecher();
const route = useRoute();
const { fach } = route.params;

</script>
