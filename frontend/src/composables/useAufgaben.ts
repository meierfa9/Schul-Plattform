import axios from 'axios';
import { getAufgabe, getDoneAufgabe, getOpenAufgabe, updateAufgabe, addNewAufgabe } from '@/api/aufgaben';
import { Aufgabe } from '@/model/aufgaben';
import { onMounted, ref } from 'vue';

export function useTasks() {

    const tasks = ref<Aufgabe[]>([]);
    const tasksDone = ref<any>([]);
    const tasksOpen = ref<any>([]);

    const newTask = ref<Aufgabe>({});
    
    //GET-REQUEST alle Tasks
    const getTasks = async () => {
        try {
            tasks.value = await getAufgabe();
            console.log(tasks)
        } catch (error) {
            console.log(error); 
        }
    }

    //GET-REQUEST erledigte Tasks
    const getDoneTasks = async () => {
        try {
            tasksDone.value = await getDoneAufgabe();
            console.log(tasksDone)
        } catch (error) {
            console.log(error); 
        }
    }

    //GET-REQUEST offene Tasks
    const getOpenTasks = async () => {
        try {
            tasksOpen.value = await getOpenAufgabe();
            console.log(tasksOpen)
        } catch (error) {
            console.log(error); 
        }
    }


   //PUT-REQUEST Status Aufgabe
    const finishTask = async (task: Aufgabe) => {
        try {
            task.done = true;
            updateAufgabe(task);
        } catch (error) {
            console.log(error); 
        }
    }

    //POST-REQUEST Neue Aufgabe
    const addTask = async (task: Aufgabe) => {
        try {
            newTask.value.done = false;
            await addNewAufgabe(newTask.value);
            console.log(newTask);
            getTasks();
        } catch (error) {
            console.log(error); 
        }
    }

    onMounted(() => {
        getTasks();
        getDoneTasks();
        getOpenTasks();
    })

    return {
        newTask,
        tasks,
        tasksDone,
        tasksOpen,
        addTask,
        finishTask,
    }
}