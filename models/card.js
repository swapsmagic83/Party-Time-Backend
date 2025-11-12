const db = require("../db");

class Card {

    static async getAllCardsByOccasion(occasion){
        const res = await db.query(
            `SELECT 
            id,
            img_url
            from 
            cards
            where
            occasion = $1`,
            [occasion]
        );
        return res.rows;
    }

    static async getCardById(id){
        const res = await db.query(
            `select 
            id,
            occasion,
            img_url
            from 
            cards
            where
            id = $1`,
            [id]
        );
        return res.rows[0];
    }
    static async getAll(){
        const res = await db.query(
            `select * from cards`
        );
        return res.rows;
    }
}
module.exports = Card;