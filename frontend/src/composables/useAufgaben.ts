import axios from 'axios';
import { getAufgabe, updateAufgabe, addNewAufgabe } from '@/api/aufgaben';
import { Aufgabe } from '@/model/aufgaben';
import { onMounted, ref } from 'vue';

export function useTasks() {

    const tasks = ref<Aufgabe[]>([]);

    const newTask = ref<Aufgabe>({});

    const getTasks = async () => {
        try {
            tasks.value = await getAufgabe();
            console.log(tasks)
        } catch (error) {
            console.log(error); // FIXME: Errorhandling
        }
    }

    const getDoneTasks = async () => {
        try {
            tasks.value = await getAufgabe();
            console.log(tasks)
        } catch (error) {
            console.log(error); // FIXME: Errorhandling
        }
    }

   
    const finishTask = async (task: Aufgabe) => {
        try {
            task.done = true;
            updateAufgabe(task);
        } catch (error) {
            console.log(error); // FIXME: Errorhandling
        }
    }
 
    const addTask = async () => {
        try {
            // add the new todo and update the list of all todos afterwards
            await addNewAufgabe(newTask.value);
            getTasks();
        } catch (error) {
            console.log(error); // FIXME: Errorhandling
        }
    }

    onMounted(() => {
        getTasks();
    })

    return {
        newTask,
        tasks,
        getTasks,
        addTask,
        finishTask,
    }
}