<template>
  <ion-page>
    <ion-header>
      <ion-toolbar>
        <ion-title>Übersicht</ion-title>
      </ion-toolbar>
    </ion-header>
    <ion-content :fullscreen="true">
      <ion-header collapse="condense">
        <ion-toolbar>
          <ion-title size="large">Übersicht</ion-title>
        </ion-toolbar>
      </ion-header>

      <ion-grid>
        <ion-row>
          <ion-col size-xs="12" size-md="6">
            <ion-card
              button
              :router-link="'/tabs/uebersicht/' + fach.titel"
              v-for="fach in faecher"
              :key="fach"
            >
              <img
                alt="Silhouette of mountains"
                src="https://ionicframework.com/docs/img/demos/card-media.png"
              />
              <ion-card-header>
                <ion-card-title>{{ fach.titel }}</ion-card-title>
                <ion-card-subtitle>Lehrperson</ion-card-subtitle>
              </ion-card-header>

              <ion-card-content> Offene Aufgaben </ion-card-content>
            </ion-card>
          </ion-col>
        </ion-row>
      </ion-grid>
    </ion-content>
  </ion-page>
</template>

<script setup lang="ts">
import {
  IonCard,
  IonCardContent,
  IonCardHeader,
  IonCardSubtitle,
  IonCardTitle,
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
import { useFaecher } from "../composables/useFaecher";

const { faecher, lehrer } = useFaecher();
</script>
<style scoped>
/* iOS places the subtitle above the title */
ion-card-header.ios {
  display: flex;
  flex-flow: column-reverse;
}
</style>