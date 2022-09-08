const express = require('express')
const mysql = require('mysql')

const PORT = process.env.PORT || 3000
const HOST = '0.0.0.0'

console.log(process.env)

const api = express()
api.get('/', (req, res) => {
  res.sendFile('v2/index.html');
  res.send('PROD-2022-05\n');
})

api.listen(PORT, HOST)
console.log(`Running on http://${HOST}:${PORT}`)
