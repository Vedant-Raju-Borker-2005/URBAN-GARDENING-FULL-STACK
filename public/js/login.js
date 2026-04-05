import { createClient } from 'https://cdn.jsdelivr.net/npm/@supabase/supabase-js/+esm';

const SUPABASE_URL = "https://wtgtwdzjjlizwgjikwfe.supabase.co";
const SUPABASE_ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Ind0Z3R3ZHpqamxpendnamlrd2ZlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTc5NDI3NDQsImV4cCI6MjA3MzUxODc0NH0.uFLSKxI_-ismnafJVeOQpmPgpwzupZ0QRfDHbIoSWng";
const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

document.addEventListener('DOMContentLoaded', () => {
  const form = document.querySelector('form');//finds form element on the webpage
  const emailEl = document.getElementById('email');
  const passwordEl = document.getElementById('password');
//checks and if does not exist create error message
  let errorEl = document.getElementById('error-msg');
  if (!errorEl) {
    errorEl = document.createElement('p');
    errorEl.id = 'error-msg';
    errorEl.style.color = 'red';
    errorEl.style.fontSize = '0.9rem';
    errorEl.style.marginTop = '5px';

    if (emailEl && emailEl.parentNode) {
      passwordEl.insertAdjacentElement('afterend', errorEl);
    } else {
      form.appendChild(errorEl);
    }
  }
  //submit event handler
  form.addEventListener('submit', async (e) => {
    e.preventDefault();// prevent browser from refreshing
    errorEl.textContent = ''; // clear errors messages

    const email = emailEl ? emailEl.value.trim() : '';//remove spacesbefore email
    const password = passwordEl ? passwordEl.value : '';

    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    if (!email || !password) {
      errorEl.textContent = 'Please enter both email and password.';
      return;
    }

    if (!emailRegex.test(email)) {
      errorEl.textContent = 'Please enter a valid email address.';
      return;
    }

    try {
      const { data, error } = await supabase.auth.signInWithPassword({
        email,
        password,
      });
      console.log("Login result:", { data, error });  // <---- add this
      if (error) {
        console.error('[login] error', error);
        errorEl.textContent = 'Login failed: ' + (error.message || error);
        return;
      }
      window.location.href = '/index.html';  // absolute path
    } 

    catch (err) {
      console.error('[login] unexpected error', err);
      errorEl.textContent = 'Unexpected error. See console for details.';
    }
  });
});
//()=> is arrow function,async used to make function asynchronus so that await can be used
