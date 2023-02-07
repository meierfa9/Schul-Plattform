import { onMounted, ref } from 'vue';

export function useFaecher() {

    const faecher = ref<any>([]);

    const lehrer = ref<any>([]);

    const getFaecher = async () => {
        faecher.value = [{id: 1, titel: "Mathematik"}, {id: 2, titel: "Deutsch"}, {id: 3, titel: "Englisch"}]
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