<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('password','password-confirm'); section>
    <#if section = "header">

        <div class="col-12">
            <h1 class="headline">
                <v-card-text>
                    ${msg("updatePasswordTitle")}
                </v-card-text>
            </h1>
        </div>

    <#elseif section = "form">
        <style>
            #kc-content-wrapper .row {
                margin: -12px;
            }
        </style>
        <form id="kc-passwd-update-form" class="${properties.kcFormClass!} mt-5" action="${url.loginAction}" method="post">
            <input type="text" id="username" name="username" value="${username}" autocomplete="username"
                   readonly="readonly" style="display:none;"/>
            <input type="password" id="password" name="password" autocomplete="current-password" style="display:none;"/>

            <div class="${properties.kcFormGroupClass!}">

                <v-text-field
                        :rules="[rules.required]"
                        :append-icon="showpassword ? '$vuetify.icons.eyeOpen' : '$vuetify.icons.eye'"
                        prepend-inner-icon="$vuetify.icons.password"
                        :type="showpassword ? 'text' : 'password'"
                        id="password-new"
                        autocomplete="off"
                        filled
                        outlined
                        name="password-new"
                        autocomplete="off"
                        placeholder="Enter New Password"
                        label="${msg("passwordNew")}"
                        @click:append="showpassword = !showpassword"
                        tabindex="2"
                        autocomplete="new-password"
                        persistent-placeholder
                        aria-invalid="<#if messagesPerField.existsError('password','password-confirm')>true</#if>"
                ></v-text-field>
                <div class="${properties.kcInputWrapperClass!}">
                    <#if messagesPerField.existsError('password')>
                        <div class="mb-5 v-error-field">
                            <span id="input-error-password" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('password'))?no_esc}
                            </span>
                        </div>
                    </#if>
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!}">
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
                        placeholder="Confirm Password"
                        label="${msg("passwordConfirm")}"
                        @click:append="showpassword = !showpassword"
                        tabindex="2"
                        autocomplete="new-confirm"
                        persistent-placeholder
                        aria-invalid="<#if messagesPerField.existsError('password-confirm')>true</#if>"
                ></v-text-field>
                <div class="${properties.kcInputWrapperClass!}">

                    <#if messagesPerField.existsError('password-confirm')>
                        <div class="mb-5 v-error-field">
                            <span id="input-error-password-confirm" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('password-confirm'))?no_esc}
                            </span>
                        </div>
                    </#if>

                </div>
            </div>

            <div class="${properties.kcFormGroupClass!}">
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <#if isAppInitiatedAction??>
                            <div class="checkbox">
                                <v-checkbox
                                        label="${msg("logoutOtherSessions")}"
                                        tabindex="3"
                                        id="logout-sessions"
                                        name="logout-sessions"
                                        value="on"
                                        :ripple="false"
                                        on-icon="$vuetify.icons.checkboxOn"
                                >
                                </v-checkbox>
                            </div>
                        </#if>
                    </div>
                </div>

                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <#if isAppInitiatedAction??>
                        <v-row>
                            <v-col cols="6">
                            <v-btn
                                    block
                                    color="primary"
                                    name="submitAction"
                                    id="kc-login"
                                    large
                                    elevation="0"
                                    :ripple="false"
                                    @click="submit"
                                    :loading="loading"
                                    type="submit"
                                    tabindex="4"
                                    value="Save"
                            >
                                ${msg("doSubmit")}
                            </v-btn>
                        </v-col>
                        <v-col cols="6">
                            <v-btn
                                    block
                                    color="primary"
                                    outlined
                                    name="cancel-aia"
                                    id="kc-login"
                                    large
                                    elevation="0"
                                    :ripple="false"
                                    @click="submit"
                                    :loading="loading"
                                    type="submit"
                                    tabindex="4"
                                    value="true"
                            >
                                ${msg("doCancel")}
                            </v-btn>
                        </v-col>
                    </v-row>
                    <#else>

                        <v-btn
                            block
                            color="primary"
                            name="submitAction"
                            id="kc-login"
                            large
                            elevation="0"
                            :ripple="false"
                            @click="submit"
                            :loading="loading"
                            type="submit"
                            tabindex="4"
                            value="Save"
                        >
                            ${msg("doSubmit")}
                        </v-btn>
                    </#if>
                </div>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>