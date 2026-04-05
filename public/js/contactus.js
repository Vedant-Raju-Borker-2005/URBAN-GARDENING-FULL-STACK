import { createClient } from 'https://cdn.jsdelivr.net/npm/@supabase/supabase-js/+esm';

const SUPABASE_URL = "https://wtgtwdzjjlizwgjikwfe.supabase.co";
const SUPABASE_ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Ind0Z3R3ZHpqamxpendnamlrd2ZlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTc5NDI3NDQsImV4cCI6MjA3MzUxODc0NH0.uFLSKxI_-ismnafJVeOQpmPgpwzupZ0QRfDHbIoSWng";
const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

const plantCountSelect = document.getElementById("plantCount");
const plantInputsDiv = document.getElementById("plantInputs");

// for adding plant name input fields according to the selected option
plantCountSelect.addEventListener("change", () => {
  const count = parseInt(plantCountSelect.value);
  plantInputsDiv.innerHTML = "";
  for (let i = 0; i < count; i++) {
    const input = document.createElement("input");
    input.type = "text";
    input.name = `plant${i + 1}`;//for ensuring each plant name is unique if there are more than one plat names 
    input.placeholder = `Plant name ${i + 1}`;
    input.required = true;
    input.style.marginTop = "8px";
    plantInputsDiv.appendChild(input);
  }
});

// Submit feedback to Supabase
document.getElementById("feedback-form").addEventListener("submit", async (e) => {
  e.preventDefault();

  const formData = new FormData(e.target);
  const data = Object.fromEntries(formData.entries());//to create key value pairs of all the fields inputted

  // plant name array via dynamic inputs
  const count = parseInt(data.plantCount) || 0;
  const plantNames = [];
  for (let i = 1; i <= count; i++) {
    if (data[`plant${i}`]) {
      plantNames.push(data[`plant${i}`]);
      delete data[`plant${i}`];
    }
  }

  const payload = {
    full_name: data.fullName, 
    email: data.email,
    phone: data.phone,
    suggestion: data.suggestion,   
    plant_count: count,          
    plant_names: plantNames.length > 0 ? plantNames : null //array or null
  };

  const { error } = await supabase.from("feedback").insert([payload]);

  if (error) {
    alert("Error submitting feedback: " + error.message);
  } else {
    alert("Thank you for your feedback!");
    e.target.reset();
    plantInputsDiv.innerHTML = "";
  }
});
