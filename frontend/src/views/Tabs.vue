<template>
  <ion-page>
    <ion-tabs>
      <ion-router-outlet></ion-router-outlet>
      <ion-tab-bar slot="bottom">
        <ion-tab-button tab="projects" href="/tabs/home">
          <ion-icon :icon="home" />
          <ion-label>Home</ion-label>
        </ion-tab-button>

        <ion-tab-button tab="todo" href="/tabs/uebersicht">
          <ion-icon :icon="listOutline" />
          <ion-label>Übersicht</ion-label>
        </ion-tab-button>
      </ion-tab-bar>
    </ion-tabs>
  </ion-page>
</template>

<script setup lang="ts">
import {
  IonTabBar,
  IonTabButton,
  IonTabs,
  IonLabel,
  IonIcon,
  IonPage,
  IonRouterOutlet,
} from "@ionic/vue";
import { home, listOutline, flash, apps, send } from "ionicons/icons";
</script>