import express, { Request, Response } from 'express'
import cors from 'cors'
import dotenv from 'dotenv'
import { Pool } from 'pg'

const app = express()

app.use(cors())
dotenv.config()

const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
  ssl: { rejectUnauthorized: false }
});

app.get('/api/ping', (_req: Request, res: Response) => {
  res.json({ message: 'pong' })
});

app.get('/api/cars', async (_req, res) => {
  const carsResponse = await pool.query(`SELECT * FROM cars`)
  res.json(carsResponse.rows)
})

app.get('/api/manufacturers', async (_req, res) => {
  const manufacturersResponse = await pool.query(`SELECT * FROM manufacturers`)
  res.json(manufacturersResponse.rows)
});

app.listen(process.env.PORT || 3001, () => {
  console.log(`Server running on http://localhost:${process.env.PORT || 3001}`)
});
