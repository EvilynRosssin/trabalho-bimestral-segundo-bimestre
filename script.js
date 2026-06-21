// ============================================================
//  Mente Acadêmica — Login (JavaScript Vanilla)
// ============================================================

const form = document.getElementById("login-form")
const emailInput = document.getElementById("email")
const passwordInput = document.getElementById("password")
const emailError = document.getElementById("email-error")
const passwordError = document.getElementById("password-error")
const toggleBtn = document.getElementById("toggle-password")
const submitBtn = document.getElementById("btn-submit")

// ---- Mostrar / ocultar senha ----------------------------------
toggleBtn.addEventListener("click", () => {
  const isHidden = passwordInput.type === "password"
  passwordInput.type = isHidden ? "text" : "password"
  toggleBtn.classList.toggle("is-visible", isHidden)
  toggleBtn.setAttribute("aria-pressed", String(isHidden))
  toggleBtn.setAttribute(
    "aria-label",
    isHidden ? "Ocultar senha" : "Mostrar senha",
  )
})

// ---- Helpers de validação -------------------------------------
const EMAIL_RE = /^[^\s@]+@[^\s@]+\.[^\s@]+$/

function setError(input, errorEl, message) {
  input.closest(".field").classList.add("invalid")
  input.setAttribute("aria-invalid", "true")
  errorEl.textContent = message
}

function clearError(input, errorEl) {
  input.closest(".field").classList.remove("invalid")
  input.removeAttribute("aria-invalid")
  errorEl.textContent = ""
}

function validateEmail() {
  const value = emailInput.value.trim()
  if (!value) {
    setError(emailInput, emailError, "Informe seu e-mail.")
    return false
  }
  if (!EMAIL_RE.test(value)) {
    setError(emailInput, emailError, "Digite um e-mail válido.")
    return false
  }
  clearError(emailInput, emailError)
  return true
}

function validatePassword() {
  const value = passwordInput.value
  if (!value) {
    setError(passwordInput, passwordError, "Informe sua senha.")
    return false
  }
  clearError(passwordInput, passwordError)
  return true
}

// Limpa o erro enquanto o usuário corrige
emailInput.addEventListener("input", () => {
  if (emailInput.closest(".field").classList.contains("invalid")) validateEmail()
})
passwordInput.addEventListener("input", () => {
  if (passwordInput.closest(".field").classList.contains("invalid"))
    validatePassword()
})

// ---- Submit ----------------------------------------------------
form.addEventListener("submit", (event) => {
  event.preventDefault()

  const emailOk = validateEmail()
  const passwordOk = validatePassword()

  if (!emailOk || !passwordOk) {
    // foca o primeiro campo inválido
    if (!emailOk) emailInput.focus()
    else passwordInput.focus()
    return
  }

  // Estado de loading simulado
  submitBtn.classList.add("is-loading")
  submitBtn.disabled = true

  setTimeout(() => {
    submitBtn.classList.remove("is-loading")
    submitBtn.disabled = false
    console.log("[v0] Login enviado:", {
      email: emailInput.value.trim(),
      remember: document.getElementById("remember").checked,
    })
  }, 1600)
})
