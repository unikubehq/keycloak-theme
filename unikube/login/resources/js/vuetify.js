
const email = Vue.component('Email', {
  template: '<svg width="24px" height="24px" viewBox="0 0 24 24" version="1.1" xmlns="http://www.w3.org/2000/svg"\n' +
    '       xmlns:xlink="http://www.w3.org/1999/xlink">\n' +
    '    <title>Icons/Small/Email</title>\n' +
    '    <g id="Icons/Small/Email" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"\n' +
    '       stroke-linecap="round">\n' +
    '      <g id="Group-7" transform="translate(2.000000, 4.500000)" stroke-width="2">\n' +
    '        <path\n' +
    '            d="M17.6121,15.5274 L2.1061,15.5274 C0.9431,15.5274 0.0001,14.5844 0.0001,13.4214\n' +
    '            L0.0001,2.1064 C0.0001,0.9434 0.9431,0.0004 2.1061,0.0004 L17.6121,0.0004\n' +
    '            C18.7751,0.0004 19.7181,0.9434 19.7181,2.1064 L19.7181,13.4214 C19.7181,14.5844\n' +
    '            18.7751,15.5274 17.6121,15.5274 Z"\n' +
    '            id="Stroke-1" stroke="#C4CCD4"></path>\n' +
    '        <path d="M0.5427,0.8413 L8.0597,6.8323 C9.1117,7.6723 10.6057,7.6723 11.6587,6.8323\n' +
    '        L19.1757,0.8413"\n' +
    '              id="Stroke-3" stroke="#C4CCD4"></path>\n' +
    '        <line x1="3.4539" y1="11.7442" x2="7.7539" y2="11.7442" id="Stroke-5" stroke="#45D093">\n' +
    '        </line>\n' +
    '      </g>\n' +
    '    </g>\n' +
    '  </svg>'
});
const password = Vue.component('Password', {
  template: '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" id="Name">\n' +
    '    <g id="Icons/Small/Password" stroke="none" stroke-width="1" fill="none"\n' +
    '       fill-rule="evenodd" stroke-linecap="round">\n' +
    '      <g id="Group-9" transform="translate(2.000000, 3.000000)" stroke-width="2">\n' +
    '        <path\n' +
    '            d="M15.6631818,15.3724545 C14.0077273,17.1033636 11.675,18.1815455\n' +
    '            9.09136364,18.1815455 C4.07045455,18.1815455 0.000454545455,14.1115455\n' +
    '            0.000454545455,9.09063636 C0.000454545455,4.06972727 4.07045455,-0.000272727273\n' +
    '            9.09136364,-0.000272727273 C12.6522727,-0.000272727273 15.7359091,2.04790909\n' +
    '            17.2277273,5.03063636"\n' +
    '            id="Stroke-1" stroke="#C4CCD4"></path>\n' +
    '        <path\n' +
    '            d="M10.3649091,9.09090909 L19.0921818,9.09090909 C19.5749091,9.09090909\n' +
    '            19.9667273,9.49818182 19.9667273,10 L19.9667273,12.9736364"\n' +
    '            id="Stroke-3" stroke="#C4CCD4"></path>\n' +
    '        <line x1="15.7466364" y1="9.09090909" x2="15.7466364" y2="11.4663636"\n' +
    '              id="Stroke-5" stroke="#C4CCD4"></line>\n' +
    '        <path\n' +
    '            d="M10.3649091,9.09090909 C10.3649091,10.5972727 9.144,11.8181818\n' +
    '            7.63763636,11.8181818 C6.13218182,11.8181818 4.91036364,10.5972727\n' +
    '            4.91036364,9.09090909 C4.91036364,7.58454545 6.13218182,6.36363636\n' +
    '            7.63763636,6.36363636 C9.144,6.36363636 10.3649091,7.58454545 10.3649091,9.09090909 Z"\n' +
    '            id="Stroke-7" stroke="#45D093"></path>\n' +
    '      </g>\n' +
    '    </g>\n' +
    '  </svg>'
});

const check = Vue.component('Checkbox', {
  template: '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" id="Name">\n' +
    '    <g id="Icons/Checkboxes/Checked" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">\n' +
    '      <rect id="Rectangle" fill="#45D093" x="1" y="1" width="22" height="22" rx="1"></rect>\n' +
    '      <polyline id="Path-2" stroke="#FFFFFF" stroke-width="2" stroke-linecap="round"\n' +
    '                stroke-linejoin="round"\n' +
    '                points="7 11.8774543 10.6782139 15.5050116 18.031901 8"></polyline>\n' +
    '    </g>\n' +
    '  </svg>'
});

const hidePassword = Vue.component('HidePassword', {
  template: '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" id="Name">\n' +
    '    <g stroke-width="2" fill="none" fill-rule="evenodd" stroke-linecap="round">\n' +
    '      <path\n' +
    '          d="M1 12.287S5.982 5.5 12.129 5.5c6.147 0 11.13 6.787 11.13 6.787m-2.334\n' +
    '          2.481c-2.036 1.922-5.219 4.22-8.796 4.22-3.576 0-6.759-2.298-8.795-4.22"\n' +
    '          stroke="#C4CCD4"></path>\n' +
    '      <path d="M14.457 13.77a2.807 2.807 0 11-4.312-3.554m3.585-.954a2.816 2.816 0 011.454 1.405"\n' +
    '            stroke="#45D093"></path>\n' +
    '      <path stroke="#C4CCD4" d="M5.26 4.5l14.488 14.488"></path>\n' +
    '    </g>\n' +
    '  </svg>'
});

const showPassword = Vue.component('ShowPassword', {
  template: '<svg width="24px" height="24px" viewBox="0 0 24 24" version="1.1" xmlns="http://www.w3.org/2000/svg"\n' +
    '       xmlns:xlink="http://www.w3.org/1999/xlink">\n' +
    '    <title>Icons/Small/Show Password</title>\n' +
    '    <g id="Icons/Small/Show-Password" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"\n' +
    '       stroke-linecap="round">\n' +
    '      <g id="Group-7" transform="translate(1.000000, 5.500000)" stroke-width="2">\n' +
    '        <path d="M0,6.787 C0,6.787 4.983,0 11.13,0 C17.276,0 22.26,6.787 22.26,6.787" id="Stroke-1"\n' +
    '              stroke="#C4CCD4"></path>\n' +
    '        <path\n' +
    '            d="M19.9255,9.3538 C17.8895,11.2758 14.7065,13.5738 11.1295,13.5738 C7.5535,13.5738\n' +
    '            4.3705,11.2758 2.3345,9.3538"\n' +
    '            id="Stroke-3" stroke="#C4CCD4"></path>\n' +
    '        <path\n' +
    '            d="M13.9363,6.7869 C13.9363,8.3369 12.6793,9.5939 11.1293,9.5939 C9.5803,9.5939\n' +
    '            8.3233,8.3369 8.3233,6.7869 C8.3233,5.2369 9.5803,3.9799 11.1293,3.9799 C12.6793,3.9799\n' +
    '            13.9363,5.2369 13.9363,6.7869 Z"\n' +
    '            id="Stroke-5" stroke="#45D093"></path>\n' +
    '      </g>\n' +
    '    </g>\n' +
    '  </svg>'
});

new Vue({
  el: "#app",
  vuetify: new Vuetify({
    theme: {
      themes: {
        light: {
          primary: '#45D093',
          anchor: '#45D093',
        },
      },
    },
    icons: {
      iconfont: 'mdi',
      values: {
        email: {
          component: email,
        },
        password: {
          component: password,
        },
        checkboxOn: {
          component: check,
        },
        eye: {
          component: hidePassword,
        },
        eyeOpen: {
          component: showPassword,
        },
      }
    }
  }),
  data() {
    return {
      rules: {
        required: (value) => !!value || ""
      },
      showpassword: false,
      loading: false,
      dark: false
    };
  },

  mounted() {
    const theme = localStorage.getItem("dark_theme");
    if (theme) {
      if (theme == "true") {
        this.$vuetify.theme.dark = true;
      } else {
        this.$vuetify.theme.dark = false;
      }
    }
  },

  methods: {
    submit() {
      this.loading = true
    },
    toggle_dark_mode: function () {
      this.$vuetify.theme.dark = !this.$vuetify.theme.dark;
      localStorage.setItem("dark_theme", this.$vuetify.theme.dark.toString());
    }
  }
});
