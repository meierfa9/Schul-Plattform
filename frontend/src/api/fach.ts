import axios from "axios"
import { Fach } from '@/model/fach';

const config = {
    auth: {
        username: 'meierfa9',
        password: 'meierfa9pass'
    }
}

export async function getFach(){
    
    const response = await axios.get('http://localhost:8080/api/schulfaecher', config)
    console.log(response.data)
    return response.data
}
