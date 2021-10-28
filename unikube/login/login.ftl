<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo displayWide=(realm.password && social.providers??); section>
<v-card-text>
    <#if section = "header">
        ${msg("doLogIn")}
    <#elseif section = "form">
    <#if realm.password && realm.registrationAllowed && !registrationDisabled??>
        <span class="register-link">${msg("noAccount")} <a tabindex="6" href="${url.registrationUrl}">${msg("doRegister")}</a></span>
    </#if>
    <div id="kc-form" <#if realm.password && social.providers??>class="${properties.kcContentWrapperClass!}"</#if>>
      <div id="kc-form-wrapper" <#if realm.password && social.providers??>class="${properties.kcFormSocialAccountContentClass!} ${properties.kcFormSocialAccountClass!}"</#if>>
        <#if realm.password>
            <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                    <#if usernameEditDisabled??>
                        <v-text-field
                          label="<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>"
                          filled
                          outlined
                          type="text"
                          placeholder="Enter Email Address"
                          :error-messages="emailErrors"
                          prepend-inner-icon="$vuetify.icons.email"
                          id="username"
                          name="username"
                          tabindex="1"
                          disabled
                          persistent-placeholder
                        >
                        </v-text-field>
                    <#else>
                        <v-text-field
                          label="<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>"
                          :rules="[rules.required]"
                          id="username"
                          name="username"
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
                    </#if>

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
                      label="${msg("password")}"
                      @click:append="showpassword = !showpassword"
                      tabindex="2"
                      persistent-placeholder
                    ></v-text-field> 
                    <div class="additional-fields">
                        <#if realm.rememberMe && !usernameEditDisabled??>
                                    <#if login.rememberMe??>
                                        <v-checkbox
                                          label="${msg("rememberMe")}"
                                          tabindex="3" 
                                          id="rememberMe" 
                                          name="rememberMe"
                                          :value="true"
                                          :ripple="false"
                                          on-icon="$vuetify.icons.checkboxOn"
                                        >
                                        </v-checkbox>
                                    <#else>
                                        <v-checkbox
                                          label="${msg("rememberMe")}"
                                          tabindex="3"
                                          id="rememberMe"
                                          name="rememberMe"
                                          :value="true"
                                          :ripple="false"
                                          on-icon="$vuetify.icons.checkboxOn"
                                        >
                                        </v-checkbox>
                                    </#if>
                                    <#if realm.resetPasswordAllowed>
                                        <a class="forgot-password-link" tabindex="5" href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a>
                                    </#if>
                        </#if>
                    </div>

	      </v-card-text>
              <v-card-actions>
                <v-spacer></v-spacer>
                <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/>
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
                  ${msg("doLogIn")}
                </v-btn>
             </v-card-actions>
            </form>
        </#if>
        </div>
        <#if realm.password && social.providers??>
            <div class="text-center kc-social-continue">
                Or continue with
            </div>
            <div id="kc-social-providers" class="${properties.kcFormSocialAccountContentClass!} ${properties.kcFormSocialAccountClass!}">
                <ul class="text-center ${properties.kcFormSocialAccountListClass!} <#if social.providers?size gt 4>${properties.kcFormSocialAccountDoubleListClass!}</#if>">
                    <#list social.providers as p>
                        <li class="${properties.kcFormSocialAccountListLinkClass!} kc-sso-logo">
                            <a href="${p.loginUrl}" id="zocial-${p.alias}" class="${p.providerId}">
                                <#if p.alias = "google">
                                    <img src="${url.resourcesPath}/img/logo_google.svg" alt="Google SSO" width="32" height="32">
                                <#elseif p.alias = "github">
                                    <img src="${url.resourcesPath}/img/logo_github.svg" alt="Github SSO" width="32" height="32">
                                <#else>
                                    <span>${p.displayName}</span>
                                </#if>
                            </a>
                        </li>
                    </#list>
                </ul>
            </div>
        </#if>
      </div>
    <#elseif section = "info" >
    </#if>
</@layout.registrationLayout>
