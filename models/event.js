const db = require("../db");
const {NotFoundError,BadRequestError} = require("../expressError");
const {v4: uuidv4} = require("uuid");

class Event {
    static async addEventInfo({
        host_id,card_id,
        heading,heading_color,
        info,info_color,
        date_time,date_time_color,
        address, address_color
    }){
        //checking for duplicate event
        console.log('this is chekcing duplicates',host_id,date_time,address)
        const checkDuplicateEvent = await db.query(
            `select * 
            from events
            where host_id = $1
            and ( LOWER(TRIM(date_time)) = LOWER(TRIM($2))
            OR LOWER(TRIM(address)) = LOWER(TRIM($3)))`,
            [host_id,date_time,address]
        );
        //if duplicate found -> returns invite_id of duplicate event
        if (checkDuplicateEvent.rows.length >0){
            const existingEvent = checkDuplicateEvent.rows[0];
            return {
                invite_id : existingEvent.invite_id,
                id : existingEvent.id
            }    
        };
        const invite_id = uuidv4();
        const result  = await db.query(
            `INSERT INTO events 
            (host_id, 
            card_id,
            heading,
            heading_color,
            info,
            info_color,
            date_time,
            date_time_color,
            address,
            address_color,
            invite_id)
            VALUES 
            ($1,$2,$3,$4,$5,$6,$7,$8,$9,$10,$11)
            RETURNING
            id,host_id,card_id,heading,heading_color,info,info_color,date_time,date_time_color,address,address_color,invite_id`,
            [host_id,card_id,heading,heading_color,info,info_color,date_time,date_time_color,address,address_color,invite_id]
        )
        console.log('inserting event',host_id,date_time,address)
        return result.rows[0];
    }
    static async getEvent(invite_id){
        const result = await db.query(`
            select
            events.*, hosts.name, cards.img_url
            from
            events
            left join hosts on events.host_id = hosts.id
            left join cards on events.card_id = cards.id
            where events.invite_id = $1
            `,[invite_id]);
            const event = result.rows[0];
            if (!event) throw new NotFoundError(`Not found: ${invite_id}`)
                return event;
    }
    static async findEventByDateAddressHost({date,address,host_id}){
        const result = await db.query(
            `select * from events
            where date_time  = $1 
            and address  = $2
            and host_id = $3`,
            [date,address,host_id]
        );
        const event = result.rows[0];
        return event;
    }
    static async getEventByEventId(id){
        const result = await db.query(
            `select * from events
            where
            id = $1`,
            [id]
        );
        const event = result.rows[0];
        return event;
    } 
}
module.exports = Event;