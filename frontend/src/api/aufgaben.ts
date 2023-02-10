import axios from "axios"
import { Aufgabe } from '@/model/aufgaben';
import { API_ROOT } from "@/config/development";

const config = {
    auth: {
        username: 'meix',
        password: 'meixpass'
    }
}

export async function getAufgabe(){
    
    const response = await axios.get(API_ROOT + '/api/tasks', config)
    console.log(response.data)
    return response.data
}

export async function updateAufgabe(task: Aufgabe): Promise<any>   {
    const config = {        
        withCredentials: true
    }
    try {
        const response = await axios.put(API_ROOT + '/api/tasks', task, config);
        return response.data;
    } catch (error) {
        return error;   
    }
}

export async function addNewAufgabe(newTask: Aufgabe): Promise<any>   {
    const config = {        
        withCredentials: true
    }
    try {
        const response = await axios.post(API_ROOT + '/api/tasks', newTask, config);
        return response.data;
    } catch (error) {
        return error;   
    }
}