'use strict'

import express  from 'express'
import bodyParser from 'body-parser'

const serverPort = 4001

const app = express()

const startServer = () => {
    console.log("Starting OTA Embedded Software Manager...");

    app.use(bodyParser.urlencoded({extended: false}))
    app.use(bodyParser.json())

    app.post('/trigger-update', (req, res) => {
        const deviceName = req.body.device_name
        console.log(`Received device name ${deviceName}`)

        res.write("All good!")
        res.end()
    })

    app.listen(serverPort, () => console.log(`Server started on port ${4001}`))
}

startServer()
