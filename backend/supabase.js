// backend/supabase.js
const { createClient } = require('@supabase/supabase-js');

const SUPABASE_URL = "https://wtgtwdzjjlizwgjikwfe.supabase.co";
const SUPABASE_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Ind0Z3R3ZHpqamxpendnamlrd2ZlIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1Nzk0Mjc0NCwiZXhwIjoyMDczNTE4NzQ0fQ.SmS8YgMEHGNRP_n5LHd12bDJ5TbSbP9tN_5igOfN1OU"; // use service role for backend

const supabase = createClient(SUPABASE_URL, SUPABASE_KEY);

module.exports = supabase;
