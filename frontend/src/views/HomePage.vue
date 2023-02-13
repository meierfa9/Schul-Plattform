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
            <ion-card button :router-link="'/tabs/open/'">
              <img
                class="tasks"
                alt="todo"
                src="https://cdn-icons-png.flaticon.com/512/7590/7590241.png"
              />
              <ion-card-header>
                <ion-card-title
                  >Offene Aufgaben
                  <ion-badge>
                    Anzahl: {{ tasksOpen.length }}</ion-badge
                  ></ion-card-title
                >
              </ion-card-header>
            </ion-card>
          </ion-col>
          <ion-col size-xs="12" size-md="6">
            <ion-card button :router-link="'/tabs/done/'">
              <img
                class="tasks"
                alt="done"
                src="https://cdn-icons-png.flaticon.com/512/9028/9028946.png"
              />
              <ion-card-header>
                <ion-card-title
                  >Erledigte Aufgaben
                  <ion-badge>Anzahl: {{ tasksDone.length }}</ion-badge>
                </ion-card-title>
              </ion-card-header>
            </ion-card>
          </ion-col>
          <ion-col>
            <ion-card class="newtask">
              <img
                class="icon"
                alt="done"
                src="https://cdn-icons-png.flaticon.com/512/2311/2311991.png"
              />
              <ion-button
                class="newtaskbutton"
                button
                :router-link="'/tabs/new/'"
                fill="clear"
              >
                + Neue Aufgabe hinzufügen</ion-button
              >
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
import { key } from "ionicons/icons";
import { useRoute } from "vue-router";
import { useTasks } from "../composables/useAufgaben";
const { tasks, finishTask, tasksDone, tasksOpen } = useTasks();
</script>

<style scoped>
ion-card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.503);
}

ion-card:hover {
  background-color: lightgrey;
  color: black;
}

ion-badge {
  float: right;
  font-size: 15pt;
  background-color: rgb(255, 83, 83);
}

.tasks {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
}

.icon {
  width: 5%;
  position: absolute;
  right: 20px;
  top: 14px;
}

.newtask {
  width: 320px;
}
</style>