export interface Aufgabe {
    id?: number;
    name?: String;
    description?: String;
    done?: boolean;
    schulfach?: {
        id: number;
        title: String;
    }
}