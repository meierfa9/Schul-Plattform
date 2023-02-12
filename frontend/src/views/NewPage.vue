<template>
  <ion-page>
    <ion-header>
      <ion-toolbar>
        <ion-buttons slot="start">
          <ion-back-button defaultHref="/tabs/home/"></ion-back-button>
        </ion-buttons>
        <ion-title>Aufgabe hinzufügen</ion-title>
      </ion-toolbar>
    </ion-header>

    <ion-content :fullscreen="true">
      <ion-header collapse="condense">
        <ion-toolbar>
          <ion-title size="large">Aufgabe hinzufügen</ion-title>
        </ion-toolbar>
      </ion-header>
      <ion-list>
        <ion-item>
          <ion-grid>
            <ion-row>
              <ion-text>Titel der Aufgabe</ion-text>
            </ion-row>
            <ion-row>
              <ion-input type="text" placeholder="Titel" v-model="newTask.name"></ion-input>
            </ion-row>
          </ion-grid>
          </ion-item>
          <ion-item>
          <ion-grid>
            <ion-row>
              <ion-text>Beschreibung der Aufgabe</ion-text>
            </ion-row>
            <ion-row>
              <ion-input type="text" placeholder="Beschreibung" v-model="newTask.description"></ion-input>
            </ion-row>
          </ion-grid>
          </ion-item>
        
          <ion-item>
          <ion-grid>
            <ion-row>
              <ion-text>Schulfach der Aufgabe</ion-text>
            </ion-row>
            <ion-row>
              <ion-select type="number" placeholder="Beschreibung" v-model="newTask.schulfach">
                <ion-select-option :key="fach.id" v-for="fach in faecher">{{ fach }}</ion-select-option>
              </ion-select>
            </ion-row>
          </ion-grid>
          </ion-item>






          
      </ion-list>
      <div padding>
        <ion-button @click="addTask()">Aufgabe hinzufügen</ion-button>
      </div>
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
  IonInput,
  IonSelect,
  IonSelectOption
} from "@ionic/vue";
import { useTasks } from "../composables/useAufgaben";
import { useFaecher } from "../composables/useFaecher";


const { tasks, newTask, addTask, finishTask} =
  useTasks();

const { faecher, lehrer } = useFaecher();

</script>

<style>
  ion-textarea {
  background-color: lightgrey;
  color: black;
}
</style>