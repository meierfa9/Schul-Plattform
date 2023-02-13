import axios from 'axios';
import { getFach } from '@/api/fach';
import { onMounted, ref } from 'vue';
import { Fach } from '@/model/fach';

export function useFaecher() {

    const faecher = ref<Fach[]>([]);

    const lehrer = ref<any>([]);

    //GET-REQUEST alle Fächer
    const getFaecher =async () => {
        faecher.value = await getFach();
        console.log(faecher)      
    }

    
    onMounted(() => {
        getFaecher();
    })

    return {
        faecher,
        lehrer
    }

}