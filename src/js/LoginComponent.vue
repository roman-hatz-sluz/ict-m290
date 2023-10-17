<template>
  <div>
    <div class="login-pw">
      Passwort eingeben<br />
      <input v-model.trim="password" type="text" />
    </div>

    <button
      class="pure-button pure-button-primary pure-button-primary-nav"
      @click="handleSubmit">
      Absenden
    </button>
    <br />
    <div v-show="isInvalidPassword" class="login-error">
      Ihr Login ist ungültig oder abgelaufen.
    </div>
  </div>
</template>

<script>
import { ref, onMounted } from "vue";

export default {
  setup(props, { emit }) {
    // State
    const password = ref("");
    const isInvalidPassword = ref(false);

    // Diese Funktion wird ausgeführt, wenn die Komponente initialisiert wird
    onMounted(() => {
      const { invalidPw, logout } = props;
      // Check the URL query string for 'invalidPw'
      const urlParams = new URLSearchParams(window.location.search);
      const invalidPwFromQuery = urlParams.has("invalidPw"); // returns true if the query has 'invalidPw'

      if (invalidPwFromQuery) {
        isInvalidPassword.value = true;
      }

      if (logout) {
        localStorage.removeItem("pw");
      }

      if (localStorage.getItem("pw")) {
        password.value = localStorage.getItem("pw");
      }
    });

    // Event Handlers
    const handleSubmit = (e) => {
      e.preventDefault();
      if (password.value) {
        localStorage.setItem("pw", password.value);
        location.href = `/login?pw=${password.value}`;
      }
    };

    // Watchers (optional)
    // Watch für Änderungen an `password` und speichern in localStorage
    // ...

    return {
      password,
      isInvalidPassword,
      handleSubmit,
    };
  },

  // Accepting props if any are expected
  props: {
    logout: Boolean,
  },
};
</script>
