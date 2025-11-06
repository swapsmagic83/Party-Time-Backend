const db = require("../db")

class Host {
    static async addHostInfo({name,email,phone,address}){
        const res = await db.query(
            `insert into hosts
            (name, email, phone, address)
            values 
            ($1, $2, $3, $4)
            returning
            id, name, email, phone, address`,
            [name,email,phone,address]
        )
        const host = res.rows[0]
        return host
    }
    static async findHost({email}){
        const res = await db.query(
            `select * from hosts
            where email = $1`,
            [email]
        )
        const host = res.rows[0]
        return host
    }
}
module.exports = Host