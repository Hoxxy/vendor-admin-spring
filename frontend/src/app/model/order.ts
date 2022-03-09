import { Product } from "./product";

export class Order {
    id: number;
    user_id: number;
    status: string;
    date: string;
    displayname?: string;
    city?: string;
    postcode?: string;
    address1?: string;
    phone?: string;
    productInfo?: Array<Product>;
    productQty?: Array<number>;
}