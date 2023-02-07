import axios from 'axios';
import { API_ROOT } from "@/config/development";
import { Aufgaben } from '@/model/aufgaben';

export async function getAllToDos(): Promise<Aufgaben[]>   { 
    const config = {        
        withCredentials: true
    }
    try {
        const response = await axios.get(API_ROOT + '/api/aufgaben', config);
        return response.data;
    } catch (error) {
        return <any>error;   
    }
}

export async function addNewToDo(newToDo: Aufgaben): Promise<any>   {
    const config = {        
        withCredentials: true
    }
    try {
        const response = await axios.post(API_ROOT + '/api/aufgaben', newToDo, config);
        return response.data;
    } catch (error) {
        return error;   
    }
}

export async function updateToDo(toDo: Aufgaben): Promise<any>   {
    const config = {        
        withCredentials: true
    }
    try {
        const response = await axios.put(API_ROOT + '/api/aufgaben', toDo, config);
        return response.data;
    } catch (error) {
        return error;   
    }
}