const express = require("express")
const router = express.Router()
const Event = require("../models/event")
const Host = require("../models/host")
// const {NotFoundError} = require("../expressError")

router.post('/', async function(req,res,next){
   
    try{
        console.log("📩 Received POST /events:", req.body);
        const {eventData, hostData} = req.body
        let host = await Host.findHost({email:hostData.email})
        if(!host){
            host = await Host.addHostInfo(hostData)
        }else{
            console.log("host already exists",host)
        }
        
        let  event = await Event.addEventInfo({
            heading:eventData.heading,
            heading_color:eventData.headingColor,
            info:eventData.info,
            info_color:eventData.infoColor,
            date_time:eventData.date_time,
            date_time_color:eventData.date_time_color,
            address:eventData.address,
            address_color:eventData.addressColor,
            card_id:eventData.card_id,
            host_id: host.id,
        })    
        return res.status(201).json({event_id:event.id,host_id:host.id,invite_id:event.invite_id})
    }
    catch(err){
        console.error("Error saving event",err)
        return next(err)
    }
})
router.get('/id/:event_id',async function(req,res,next){
    try{
        const event  = await Event.getEventByEventId(req.params.event_id)
        console.log('this is in event route',event)
        return res.json({event})
    }
    catch(err){
        return next(err)
    }
})
router.get('/view/:invite_id',async function (req,res,next) {
    try{
        const event = await Event.getEvent(req.params.invite_id)
        console.log('this is event in route',event)
        return res.json({event})
    }
    catch(err){
        return next(err)
    }
})

module.exports = router