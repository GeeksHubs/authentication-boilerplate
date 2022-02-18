import { SmtpClient } from "https://deno.land/x/smtp/mod.ts";


const client = new SmtpClient();
const SMTP_HOST = 'localhost';
const SMTP_PORT = 1025;
async function sendEmail(options = {}) {
    await client.connect({
        hostname: SMTP_HOST,
        port: Number(SMTP_PORT),
    });
    await client.send({
        from: "default@default.com",
        to: "to-address@default.com",
        subject: "Mail Title default",
        content: "Mail Content default",
        html: "<a href='https://garn.dev'>garn.dev</a>",
        ...options
    });
    await client.close();
    console.log('sent');
}

await sendEmail({})
