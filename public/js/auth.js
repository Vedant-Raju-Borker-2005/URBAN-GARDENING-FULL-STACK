import { createClient } from 'https://cdn.jsdelivr.net/npm/@supabase/supabase-js/+esm';
//createClient is inbuilt function in supabase
const SUPABASE_URL = "https://wtgtwdzjjlizwgjikwfe.supabase.co";
const SUPABASE_ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Ind0Z3R3ZHpqamxpendnamlrd2ZlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTc5NDI3NDQsImV4cCI6MjA3MzUxODc0NH0.uFLSKxI_-ismnafJVeOQpmPgpwzupZ0QRfDHbIoSWng";

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);//supabase variable is made a toolkit to access all of supabase functions

let isLoggedIn = false;
let currentUser = null;

function pickColorFromString(str) {
  let hash = 0;
  for (let i = 0; i < str.length; i++) hash = str.charCodeAt(i) + ((hash << 5) - hash);
  const h = Math.abs(hash) % 360;
  return `hsl(${h} 60% 45%)`;
}//chatgpt for avatar circle color

function getDisplayName(user) {
  const meta = user?.user_metadata || {};//optional chaining
  return meta.full_name || meta.name || (user.email ? user.email.split('@')[0] : 'User');
}

function createAvatarHtml(user) {
  const displayName = getDisplayName(user);
  const email = user.email || '';

  const letter = (displayName?.[0] || '?').toUpperCase();
  const bg = pickColorFromString(displayName || email || letter);

  return `<div class="avatar-fallback" style="background:${bg}">${letter}</div>`;//template literal
}

function applyNavState(user) {
  const loginBtnEl = document.querySelector('.login-btn');
  const protectedSelectors = '.nav-links a, .hero-buttons a';//to select and store all navgation links within this class
  const links = document.querySelectorAll(protectedSelectors);

  links.forEach(function(link) {
    if (!link.dataset.guardAttached) {
      //element.addEventListener(eventName, handlerFunction);
      link.addEventListener('click', function(e) {
        if (!isLoggedIn) {
          e.preventDefault();
          window.location.href = 'login.html';
        }
      });//dataset is property of DOM for HTML ↔ JS mapping
      link.dataset.guardAttached = 'true';
    }
  });

  const newBtn = loginBtnEl.cloneNode(false);//to reset the button’s event listeners.
  newBtn.className = loginBtnEl.className;
  loginBtnEl.parentNode.replaceChild(newBtn, loginBtnEl);

  if (user) {
    isLoggedIn = true;
    currentUser = user;

    const name = getDisplayName(user);
    const email = user.email;
    const avatarHtml = createAvatarHtml(user);

    newBtn.href = '#';
    //innerHTML is basically a feature of js that lets you change the content on the html page on he brower not the actual html code.
    newBtn.innerHTML = `
      <div class="user-menu">
        <div class="user-trigger">
          ${avatarHtml}
          <span class="user-label">${name}</span>
          <span class="chev">▾</span>
        </div>
        <div class="user-dropdown" role="menu" aria-hidden="true">
          <div class="dropdown-head">
            <div class="dropdown-avatar">${avatarHtml}</div>
            <div class="dropdown-info">
              <strong class="dropdown-name">${name}</strong>
              <div class="dropdown-email">${email}</div>
            </div>
          </div>
          <div class="dropdown-actions">
            <button class="btn logout-btn">Logout</button>
          </div>
        </div>
      </div>
    `;

    // toggle dropdown
    const trigger = newBtn.querySelector('.user-trigger');
    const dropdown = newBtn.querySelector('.user-dropdown');

    trigger.addEventListener('click', function(ev) {
      ev.preventDefault();
      // Accessible Rich Internet Applications
      const isHidden = dropdown.getAttribute('aria-hidden') === 'true';
      dropdown.setAttribute('aria-hidden', isHidden ? 'false' : 'true');
      dropdown.style.display = isHidden ? 'block' : 'none';
    });

    // clicking logout
    const logoutBtn = newBtn.querySelector('.logout-btn');
    logoutBtn.addEventListener('click', async (e) => {
      e.preventDefault();
      try {
        const { error } = await supabase.auth.signOut();
        if (error) throw error;
        window.location.href = '/index.html';
      } catch (err) {
        console.error('[auth] signOut failed', err);
        alert('Logout failed: ' + (err.message || err));
      }
    });

    // clicking outside closes dropdown
    document.addEventListener('click', function onDocClick(evt) {
      if (!newBtn.contains(evt.target)) {
        dropdown.setAttribute('aria-hidden', 'true');
        dropdown.style.display = 'none';
      }
    });

  } else {
    // not logged in: simple Login link
    isLoggedIn = false;
    currentUser = null;
    newBtn.textContent = 'Login';
    newBtn.href = '/login.html';
  }
}
//to check or keep track of whether user is logged in or not
async function refreshAuthState() {
  try {
    const { data: { user } } = await supabase.auth.getUser();
    applyNavState(user);
  } catch (err) {
    console.error('[auth] getUser failed', err);
  }
}
//guard or release navigation links based on login/logout
function subscribeAuthChanges() {
  supabase.auth.onAuthStateChange((_event, session) => {
    const user = session?.user ?? null;
    applyNavState(user);
  });
}

document.addEventListener('DOMContentLoaded', async () => {
  await refreshAuthState();
  subscribeAuthChanges();
});
