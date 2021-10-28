<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
<v-card-text>
    <#if section = "title">
        ${msg("emailForgotTitle")}
    <#elseif section = "header">
        ${msg("emailForgotTitle")}
    <#elseif section = "back">
        <a class="link-back" href="${url.loginUrl}">${msg("backToLogin")}</a>
    <#elseif section = "form">
        <p>${msg("emailInstruction")}</p>

        <form id="kc-reset-password-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">

            <v-text-field
              label="<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>"
              :rules="[rules.required]"
              id="email"
              name="email"
              autofocus
              autocomplete="off"
              clearable
              filled
              outlined
              type="text"
              placeholder="Enter Email Address"
              prepend-inner-icon="$vuetify.icons.email"
              id="username"
              name="username"
              tabindex="1"
              persistent-placeholder
            >
            </v-text-field>

            <v-btn
                  block
                  color="primary"
                  name="login"
                  id="kc-login"
                  large
                  elevation="0"
                  :ripple="false"
                  @click="submit"
                  :loading="loading"
                  type="submit"
                  tabindex="4"
                >
                  ${msg("doResetPassword")}
                </v-btn>
        </form>
    </#if>
</v-card-text>
</@layout.registrationLayout>
