import axios from 'axios';
import { getFach } from '@/api/fach';
import { onMounted, ref } from 'vue';
import { Fach } from '@/model/fach';

export function useFaecher() {

    const faecher = ref<Fach[]>([]);

    const lehrer = ref<any>([]);

    const getFaecher =async () => {
        faecher.value = await getFach();
        //console.log(faecher)      
    }

    const getLehrer =async () => {
        lehrer.value = [{name: "Peter Müller", fach: "Mathematik"}, {name: "Ferdi Pfoste", fach: "Deutsch"}]        
    }

    onMounted(() => {
        getFaecher();
        getLehrer();
    })

    return {
        faecher,
        lehrer
    }

}