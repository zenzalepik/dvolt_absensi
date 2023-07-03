const puppeteer = require('puppeteer');

async function runFlutterHeadless() {
  const browser = await puppeteer.launch({ headless: "new" }); // Menggunakan Headless Chrome baru
  const page = await browser.newPage();
  await page.goto('http://localhost:43051'); // Ganti "port" dengan port yang digunakan oleh aplikasi Flutter Anda
  // Tambahkan kode lain yang diperlukan, seperti menunggu hingga aplikasi selesai dimuat, dll.
  await browser.close();
}

runFlutterHeadless();
