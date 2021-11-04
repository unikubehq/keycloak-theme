
<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=!messagesPerField.existsError('username','email','firstName','lastName'); section>
    <#if section = "header">
        <div class="col-12">
            <v-card-text>
                ${msg("loginProfileTitle")}
            </v-card-text>
        </div>
    <#elseif section = "form">
        <form id="kc-update-profile-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
            <#if user.editUsernameAllowed>
                <div class="${properties.kcFormGroupClass!}">
                    <v-text-field
                            :rules="[rules.required]"
                            prepend-inner-icon="$vuetify.icons.email"
                            type="text"
                            value="${(user.username!'')}"
                            id="username"
                            autocomplete="username"
                            filled
                            outlined
                            name="username"
                            autocomplete="off"
                            placeholder="Enter ${msg("username")}"
                            label="${msg("username")}"
                            tabindex="2"
                            aria-invalid="<#if messagesPerField.existsError('username')>true</#if>"
                            persistent-placeholder
                    ></v-text-field>
                    <#if messagesPerField.existsError('username')>
                        <div class="mb-5 v-error-field">
                            <span id="input-error-username" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('username'))?no_esc}
                            </span>
                        </div>
                    </#if>
                </div>
            </#if>
            <div class="${properties.kcFormGroupClass!}">
                <v-text-field
                        :rules="[rules.required]"
                        prepend-inner-icon="$vuetify.icons.email"
                        type="text"
                        value="${(user.email!'')}"
                        id="email"
                        autocomplete="email"
                        filled
                        outlined
                        name="email"
                        autocomplete="off"
                        placeholder="Enter ${msg("email")}"
                        label="${msg("email")}"
                        tabindex="2"
                        persistent-placeholder
                        aria-invalid="<#if messagesPerField.existsError('email')>true</#if>"
                ></v-text-field>
                <#if messagesPerField.existsError('email')>
                    <div class="mb-5 v-error-field">
                        <span id="input-error-email" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('email'))?no_esc}
                        </span>
                    </div>
                </#if>
            </div>

            <div class="${properties.kcFormGroupClass!}">
                <v-text-field
                    :rules="[rules.required]"
                    prepend-inner-icon="$vuetify.icons.email"
                    type="text"
                    value="${(user.firstName!'')}"
                    id="firstName"
                    autocomplete="firstName"
                    filled
                    outlined
                    name="firstName"
                    autocomplete="off"
                    placeholder="Enter ${msg("firstName")}"
                    label="${msg("firstName")}"
                    tabindex="2"
                    persistent-placeholder
                    aria-invalid="<#if messagesPerField.existsError('firstName')>true</#if>"
                ></v-text-field>

                    <#if messagesPerField.existsError('firstName')>
                        <div class="mb-5 v-error-field">
                            <span id="input-error-firstname" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                                ${kcSanitize(messagesPerField.get('firstName'))?no_esc}
                            </span>
                        </div>
                    </#if>
            </div>

            <div class="${properties.kcFormGroupClass!}">
                <v-text-field
                    :rules="[rules.required]"
                    prepend-inner-icon="$vuetify.icons.email"
                    type="text"
                    value="${(user.lastName!'')}"
                    id="lastName"
                    autocomplete="lastName"
                    filled
                    outlined
                    name="lastName"
                    autocomplete="off"
                    placeholder="Enter ${msg("lastName")}"
                    label="${msg("lastName")}"
                    tabindex="2"
                    persistent-placeholder
                    aria-invalid="<#if messagesPerField.existsError('lastName')>true</#if>"
                ></v-text-field>

                <#if messagesPerField.existsError('lastName')>
                    <div class="mb-5 v-error-field">
                        <span id="input-error-lastname" class="${properties.kcInputErrorMessageClass!}" aria-live="polite">
                            ${kcSanitize(messagesPerField.get('lastName'))?no_esc}
                        </span>
                    </div>
                </#if>
            </div>

            <div class="${properties.kcFormGroupClass!}">
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
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