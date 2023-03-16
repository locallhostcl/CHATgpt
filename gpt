const express = require('express');
const fs = require('fs');
const app = express();

// đọc dữ liệu từ file JSON
function readData() {
  const rawData = fs.readFileSync('data.json');
  return JSON.parse(rawData);
}

// ghi dữ liệu vào file JSON
function writeData(data) {
  const jsonData = JSON.stringify(data);
  fs.writeFileSync('data.json', jsonData);
}

// API để đọc dữ liệu
app.get('/data', (req, res) => {
  const data = readData();
  res.send(data);
});

// API để ghi dữ liệu
app.post('/data', (req, res) => {
  const data = readData();
  data.push(req.body);
  writeData(data);
  res.send('Data saved successfully');
});

// chạy server trên cổng 3000
app.listen(3000, () => {
  console.log('Server is running on port 3000');
});
