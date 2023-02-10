<template>
  <ion-page>
    <ion-header>
      <ion-toolbar>
        <ion-buttons slot="start">
          <ion-back-button defaultHref="/tabs/home/"></ion-back-button>
        </ion-buttons>
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
          <ion-col v-for="fach in faecher" :key="fach.id" size-xs="12" size-md="6">
            <ion-card button :router-link="'/tabs/uebersicht/' + fach.title">

              <img v-if="fach.title === 'Mathematik'" alt="Mathematik"
                src="https://cdn-icons-png.flaticon.com/512/5012/5012407.png" />
              <img v-if="fach.title === 'Deutsch'" alt="Deutsch"
                src="https://cdn-icons-png.flaticon.com/512/2112/2112025.png" />
              <img v-if="fach.title === 'Englisch'" alt="Englisch"
                src="https://cdn-icons-png.flaticon.com/512/5238/5238411.png" />
              <img v-if="fach.title === 'Franzoesisch'" alt="Franzoesisch"
                src="https://cdn-icons-png.flaticon.com/512/8079/8079879.png" />
              <img v-if="fach.title === 'Natur Mensch Gesellschaft'" alt="Natur Mensch Gesellschaft"
                src="https://cdn-icons-png.flaticon.com/512/9601/9601647.png" />
              <img v-if="fach.title === 'Medien und Informatik'" alt="Medien und Informatik"
                src="https://cdn-icons-png.flaticon.com/512/4089/4089948.png" />
              <img v-if="fach.title === 'Gestalten'" alt="Gestalten"
                src="https://cdn-icons-png.flaticon.com/512/1188/1188503.png" />
              <img v-if="fach.title === 'Sport'" alt="Sport"
                src="https://cdn-icons-png.flaticon.com/512/1198/1198314.png" />
                <img v-if="fach.title === 'Musik'" alt="Musik"
                src="https://cdn-icons-png.flaticon.com/512/3659/3659784.png" />

              <ion-card-header>
                <ion-card-title>{{ fach.title }}</ion-card-title>
                <div v-for="lehrperson in lehrer" :key="lehrperson">
                  <ion-card-subtitle v-if="fach.title === lehrperson.faech">{{ lehrperson.name }}</ion-card-subtitle>
                </div>
              </ion-card-header>

              <ion-card-content> Offene Aufgaben
                <ion-badge>Anzahl</ion-badge>
              </ion-card-content>
            </ion-card>
          </ion-col>
        </ion-row>
      </ion-grid>
    </ion-content>
  </ion-page>
</template>

<script setup lang="ts">
import {
  IonBackButton,
  IonBadge,
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

ion-card:hover {
  background-color: lightgrey;
  color: black;
}

ion-badge {
  float: right;
  font-size: 15pt;
  background-color: red;
}

img {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
}
</style>