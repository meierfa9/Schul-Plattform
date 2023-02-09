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
      <ion-list>
        <ion-item :key="todo.id" v-for="todo in todos">
          <ion-grid>
            <ion-row>
              <ion-col>
                {{ todo.title }}
              </ion-col>
              <ion-col>
                <ion-button
                  color="danger"
                  v-if="!todo.done && !todo.archived"
                  @click="finishTodo(todo)"
                  >Finish</ion-button
                >
                <ion-button
                  color="success"
                  v-if="todo.done && !todo.archived"
                  @click="archiveTodo(todo)"
                  >Archive</ion-button
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
} from "@ionic/vue";
import { useTodos } from "../composables/useAufgaben";

const { newTodo, todos, getTodos, addTodo, finishTodo, archiveTodo } =
  useTodos();
</script>
