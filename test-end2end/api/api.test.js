import { assertEquals } from "https://deno.land/std@0.125.0/testing/asserts.ts";
// https://deno.land/std@0.125.0/testing

Deno.test('mock', async () => {
    const response = await fetch('https://mock-api.deno.dev/?body=hola');
    const body = await response.text();
    assertEquals(response.status, 200);
    assertEquals(body, 'hola')
})

Deno.test({
    name: 'localhost',
    ignore:true,
    fn: async () => {
        const response = await fetch('http://localhost:8080/api/test')
        assertEquals(response.status, 200);
    }
})
