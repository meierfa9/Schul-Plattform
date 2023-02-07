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
            <ion-card>
              <img
                alt="Silhouette of mountains"
                src="https://ionicframework.com/docs/img/demos/card-media.png"
              />
              <ion-card-header>
                <ion-card-title>Erledigte Aufgaben</ion-card-title>
              </ion-card-header>

              <ion-card-content> Offene Aufgaben </ion-card-content>
            </ion-card>
          </ion-col>
          <ion-col size-xs="12" size-md="6">
            <ion-card>
              <img
                alt="Silhouette of mountains"
                src="https://ionicframework.com/docs/img/demos/card-media.png"
              />
              <ion-card-header>
                <ion-card-title>Offene Aufgaben</ion-card-title>
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
</script>