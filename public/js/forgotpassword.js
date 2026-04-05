import { createClient } from 'https://cdn.jsdelivr.net/npm/@supabase/supabase-js/+esm';

const SUPABASE_URL = "https://wtgtwdzjjlizwgjikwfe.supabase.co";
const SUPABASE_ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Ind0Z3R3ZHpqamxpendnamlrd2ZlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTc5NDI3NDQsImV4cCI6MjA3MzUxODc0NH0.uFLSKxI_-ismnafJVeOQpmPgpwzupZ0QRfDHbIoSWng";
const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

const resetBox = document.getElementById("resetBox");
const newPassBox = document.getElementById("newPassBox");

const emailInput = document.getElementById("email");
const fullnameInput = document.getElementById("fullname");
const captchaText = document.getElementById("captchaText");
const captchaInput = document.getElementById("captchaInput");

const newPasswordInput = document.getElementById("newPassword");
const confirmPasswordInput = document.getElementById("confirmPassword");

const resetError = document.getElementById("resetError");
const newPassError = document.getElementById("newPassError");

let currentCaptcha = "";//currently captcha empty

// to generate captcha
function generateCaptcha() {
  currentCaptcha = Math.floor(10000 + Math.random() * 90000).toString();
  captchaText.textContent = currentCaptcha;
}
document.getElementById("refreshCaptcha").addEventListener("click", generateCaptcha);

// Initialize captcha
generateCaptcha();

// resetbox block
document.getElementById("sendLinkBtn").addEventListener("click", async () => {
  resetError.textContent = "";
  const email = emailInput.value.trim();
  const fullname = fullnameInput.value.trim();
  const captcha = captchaInput.value.trim();

  if (!fullname || !email || !captcha) {
    resetError.textContent = "Please fill all fields.";
    return;
  }
  if (captcha !== currentCaptcha) {
    resetError.textContent = "Captcha does not match.";
    generateCaptcha();
    return;
  }

  try {
    const { error } = await supabase.auth.resetPasswordForEmail(email, {
      redirectTo: window.location.origin + "/forgotpassword.html"
    });
    if (error) throw error;
    alert("Password reset link sent! Please check your email.");
  } catch (err) {
    console.error(err);
    resetError.textContent = "Failed to send reset link.";
  }
});

// new password block
document.addEventListener("DOMContentLoaded", async () => {
  const { data: { session } } = await supabase.auth.getSession();
  if (session && session.user) {
    resetBox.style.display = "none";
    newPassBox.style.display = "block";
  }
  // If session exists then user arrived has using recovery link
});

document.getElementById("submitBtn").addEventListener("click", async () => {
  newPassError.textContent = "";
  const newPass = newPasswordInput.value;
  const confirmPass = confirmPasswordInput.value;

  if (!newPass || !confirmPass) {
    newPassError.textContent = "All fields are required.";
    return;
  }
  if (newPass !== confirmPass) {
    newPassError.textContent = "Passwords do not match.";
    return;
  }

  try {
    const { error } = await supabase.auth.updateUser({ password: newPass });
    if (error) throw error;
    alert("Password reset successfully! Please login.");
    window.location.href = "login.html";
  } catch (err) {
    console.error(err);
    newPassError.textContent = "Failed to reset password.";
  }
});
