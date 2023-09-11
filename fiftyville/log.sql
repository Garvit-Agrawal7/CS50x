-- Keep a log of any SQL queries you execute as you solve the mystery.
.schema
--
SELECT id, description FROM crime_scene_reports
WHERE day=28 AND month=7 AND year=2021 AND street="Humphrey Street";

-- id: 295
-- Theft occured at 10:15am
SELECT name, transcript FROM interviews
WHERE year = 2021 AND month = 7 AND day = 28;

-- Check bakey_security_logs
SELECT id, activity, hour, license_plate FROM bakery_security_logs
WHERE day=28 AND month=7 AND year=2021;

-- Check atm_transactions
SELECT * FROM atm_transactions
WHERE day=28 AND month=7 AND year=2021 AND transaction_type="withdraw";

-- Check for phone calls before any nearby flight time
SELECT * FROM phone_calls
WHERE duration < 60 AND day=28 AND month=7 AND year=2021;

-- Check flights near the time of the theft
SELECT * FROM flights
WHERE day=28 AND month=7 AND year=2021;

-- Check the details with the airports
SELECT * FROM airports;

-- Searching for people who have appeared in all of the 4 instances, that is exiting the bakery, flying the same day the theft happened, ATM transaction, and were in a phone call for less than 60 seconds
-- The person who recieved the phone call is the accomplice

-- The thief is Bruce because he appeared in all of the four databases, he flew to New York City, and his accomplice was Robin since he was on a call with him.
