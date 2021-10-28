<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
<v-card-text>
    <#if section = "title">
        ${msg("registerWithTitle",(realm.displayName!''))}
    <#elseif section = "header">
        ${msg("registerWithTitleHtml",(realm.displayNameHtml!''))?no_esc}
    <#elseif section = "back">
        <a class="link-back" href="${url.loginUrl}">${msg("backToLogin")}</a>
    <#elseif section = "form">
        <form id="kc-register-form" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
          <input type="text" readonly value="this is not a login form" style="display: none;">
          <input type="password" readonly value="this is not a login form" style="display: none;">

          <#if !realm.registrationEmailAsUsername>
            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('username',properties.kcFormGroupErrorClass!)}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="username" class="${properties.kcLabelClass!}">${msg("createUsername")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="username" class="${properties.kcInputClass!}" name="username" value="${(register.formData.username!'')}" />
                </div>
            </div>
          </#if>

            <v-text-field
              label="${msg("firstName")}"
              :rules="[rules.required]"
              id="firstName"
              name="firstName"
              autofocus
              autocomplete="off"
              clearable
              filled
              outlined
              type="text"
              placeholder="Enter First Name"
              prepend-inner-icon="$vuetify.icons.email"
              tabindex="1"
              value="${(register.formData.firstName!'')}"
              persistent-placeholder
            >
            </v-text-field>

            <v-text-field
              label="${msg("lastName")}"
              :rules="[rules.required]"
              id="lastName"
              name="lastName"
              autofocus
              autocomplete="off"
              clearable
              filled
              outlined
              type="text"
              placeholder="Enter Last Name"
              prepend-inner-icon="$vuetify.icons.email"
              tabindex="1"
              value="${(register.formData.lastName!'')}"
              persistent-placeholder
            >
            </v-text-field>

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
              value="${(register.formData.email!'')}"
              persistent-placeholder
            >
            </v-text-field>

            <#if passwordRequired>

            <v-text-field
              :rules="[rules.required]"
              :append-icon="showpassword ? '$vuetify.icons.eyeOpen' : '$vuetify.icons.eye'"
              prepend-inner-icon="$vuetify.icons.password"
              :type="showpassword ? 'text' : 'password'"
              id="password"
              autocomplete="off"
              filled
              outlined
              name="password"
              autocomplete="off"
              placeholder="Enter Password"
              label="${msg("createPassword")}"
              @click:append="showpassword = !showpassword"
              tabindex="2"
              persistent-placeholder
            ></v-text-field>


            <v-text-field
              :rules="[rules.required]"
              :append-icon="showpassword ? '$vuetify.icons.eyeOpen' : '$vuetify.icons.eye'"
              prepend-inner-icon="$vuetify.icons.password"
              :type="showpassword ? 'text' : 'password'"
              id="password-confirm"
              autocomplete="off"
              filled
              outlined
              name="password-confirm"
              autocomplete="off"
              placeholder="Enter Password"
              label="${msg("passwordConfirm")}"
              @click:append="showpassword = !showpassword"
              tabindex="3"
              persistent-placeholder
            ></v-text-field>

            </#if>

            <#if recaptchaRequired??>
            <div class="form-group">
                <div class="${properties.kcInputWrapperClass!}">
                    <div class="g-recaptcha" data-size="compact" data-sitekey="${recaptchaSiteKey}"></div>
                </div>
            </div>
            </#if>

            <div class="${properties.kcFormGroupClass!}">
                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <v-btn
                  block
                  color="primary"
                  name="register"
                  id="kc-register"
                  large
                  elevation="0"
                  :ripple="false"
                  type="submit"
                  :loading="loading"
                  type="submit"
                  tabindex="4"
                >
                  ${msg("doRegister")}
                </v-btn>
                </div>
            </div>
        </form>
    </#if>
    </v-card-text>
</@layout.registrationLayout>
