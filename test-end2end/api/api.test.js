import { assertEquals } from "https://deno.land/std@0.125.0/testing/asserts.ts";
import { config } from "https://deno.land/x/dotenv@v3.2.0/mod.ts";

const { API_HOST } = config({ path: "./production.env" });
console.log({API_HOST});


// Deno.test('mock', async () => {
//     const response = await fetch('https://mock-api.deno.dev/?body=hola');
//     const body = await response.text();
//     assertEquals(body, 'hola');
//     assertEquals(response.status, 200);

//     //
// })




// Deno.test({
//     name: 'localhost',
//     ignore: false,
//     fn: async () => {
//         const response = await fetch(API_HOST + '/users');
//         await response.body.cancel();
//         assertEquals(response.status, 200);
//     }
// })
