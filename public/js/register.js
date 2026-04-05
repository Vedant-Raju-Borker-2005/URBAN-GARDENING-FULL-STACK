import { createClient } from 'https://cdn.jsdelivr.net/npm/@supabase/supabase-js/+esm';

const SUPABASE_URL = "https://wtgtwdzjjlizwgjikwfe.supabase.co";
const SUPABASE_ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Ind0Z3R3ZHpqamxpendnamlrd2ZlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTc5NDI3NDQsImV4cCI6MjA3MzUxODc0NH0.uFLSKxI_-ismnafJVeOQpmPgpwzupZ0QRfDHbIoSWng";
const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

document.addEventListener("DOMContentLoaded", () => {
  const form = document.querySelector("form");

  const nameEl = document.getElementById("name");
  const emailEl = document.getElementById("email");
  const passwordEl = document.getElementById("password");
  const confirmEl = document.getElementById("confirmPassword");

  // error message element
  let errorEl = document.getElementById("error-msg");
  if (!errorEl) {
    errorEl = document.createElement("p");
    errorEl.id = "error-msg";
    errorEl.style.color = "red";
    errorEl.style.fontSize = "0.9rem";
    errorEl.style.marginTop = "5px";
    form.appendChild(errorEl);
  }

  form.addEventListener("submit", async (e) => {
    e.preventDefault();
    errorEl.textContent = "";

    const name = nameEl?.value.trim() || "";
    const email = emailEl?.value.trim() || "";
    const password = passwordEl?.value || "";
    const confirmPassword = confirmEl?.value || "";

    if (!name || !email || !password || !confirmPassword) {
      errorEl.textContent = "Please fill all fields.";
      return;
    }

    if (password !== confirmPassword) {
      errorEl.textContent = "Passwords do not match.";
      return;
    }

    try {
      const { data: existingUser, error: checkError } = await supabase.auth.signInWithPassword({
        email,
        password: "dummy!windowsXUU" // invalid password for checking whether email is already registered
      });

      if (checkError && checkError.message.includes("Invalid login credentials")) {}
      else if (existingUser?.user) 
      {
        errorEl.textContent = "Email is already registered. Please login.";
        return;
      }
      //to crete a new user in supabase
      const { data, error } = await supabase.auth.signUp({
        email,
        password,
        options: {
          data: {
            full_name: name
          }
        }
      });

      if (error)//comes from Supabase.Auth.SignUp
      {
        console.error("[register] error", error);//to print in red
        errorEl.textContent = "Registration failed: " + error.message;//comes from supabase
        return;
      }

      alert("Registration successful! Please login.");
      window.location.href = "login.html";
    } catch (err) {
      console.error("[register] unexpected error", err);
      errorEl.textContent = "Unexpected error. See console for details.";
    }
  });
});
