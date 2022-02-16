import { assertEquals, config } from "./deps.js";

const { API_HOST } = config({ path: "./.env" });
console.log({ API_HOST });


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
