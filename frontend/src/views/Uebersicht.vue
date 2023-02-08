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
          <ion-col v-for="fach in faecher" :key="fach" size-xs="12" size-md="6">
            <ion-card button :router-link="'/tabs/uebersicht/' + fach.titel">

              <img v-if="fach.titel === 'Mathematik'" alt="Mathematik" src="https://www.shutterstock.com/image-vector/colorful-mathematics-word-concept-technical-260nw-1483052450.jpg" />
              <img v-if="fach.titel === 'Deutsch'" alt="Deutsch" src="https://ionicframework.com/docs/img/demos/card-media.png" />
              <img v-if="fach.titel === 'Englisch'" alt="Englisch" src="https://ionicframework.com/docs/img/demos/card-media.png" />

              <ion-card-header>
                <ion-card-title>{{ fach.titel }}</ion-card-title>
                <template v-for="lehrperson in lehrer" :key="lehrperson">
                  <ion-card-subtitle v-if="fach.titel === lehrperson.fach">{{ lehrperson.name }}</ion-card-subtitle>
                </template>
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