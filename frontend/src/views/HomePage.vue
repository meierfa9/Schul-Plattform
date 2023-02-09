<template>
  <ion-page>
    <ion-header>
      <ion-toolbar>
        <ion-title>Home</ion-title>
      </ion-toolbar>
    </ion-header>
    <ion-content :fullscreen="true">
      <ion-header collapse="condense">
        <ion-toolbar>
          <ion-title size="large">Home</ion-title>
        </ion-toolbar>
      </ion-header>

      <ion-grid>
        <ion-row>
          <ion-col size-xs="12" size-md="6">
            <ion-card button :router-link="'/tabs/done/'">
              <img
                alt="done"
                src="https://cdn-icons-png.flaticon.com/512/9028/9028946.png"
              
              />
              <ion-card-header>
                <ion-card-title>Erledigte Aufgaben</ion-card-title>
              </ion-card-header>

              <ion-card-content>Erledigte Aufgaben
                <ion-badge>Anzahl</ion-badge>
              </ion-card-content>
            </ion-card>
          </ion-col>
          <ion-col size-xs="12" size-md="6">
            <ion-card button :router-link="'/tabs/open/'">
              <img
                alt="todo"
                src="https://cdn-icons-png.flaticon.com/512/7590/7590241.png"
              />
              <ion-card-header>
                <ion-card-title>Offene Aufgaben</ion-card-title>
              </ion-card-header>

              <ion-card-content>Offene Aufgaben
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
import { useRoute } from "vue-router";

</script>

<style scoped>

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