const express = require("express");
const router = express.Router();
const Card = require("../models/card");

//get all cards by occasion
router.get('/:occasion', async function(req,res,next) {
    try{
        const cards = await Card.getAllCardsByOccasion(req.params.occasion);
        return res.json({cards});
    }
    catch(err){
        return next(err);
    }
    
});

//get single card by card id
router.get('id/:id',async function(req,res,next){
    try{
        const card = await Card.getCardById(req.params.id);
        return res.json({card});
    }
    catch(err){
        return next(err);
    }
});

// get all cards
router.get('/',async function(req,res,next) {
    try{
        const cards  = await Card.getAll();
        return res.json(cards);
    }
    catch(err){
        return next(err);
    }
});
module.exports = router;