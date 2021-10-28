<#import "template.ftl" as layout>
<@layout.mainLayout active='password' bodyClass='password'; section>


    <div class="col-12">
        <h1 class="headline">
            <v-card-text>
                ${msg("changePasswordHtmlTitle")}
            </v-card-text>
        </h1>
    </div>

    <form action="${url.passwordUrl}" class="form-horizontal col-8 offset-2" method="post">
        <input type="text" id="username" name="username" value="${(account.username!'')}" autocomplete="username" readonly="readonly" style="display:none;">

        <div class="text-left" style="margin-bottom: 30px;">
            <span class="subtitle">${msg("redirect")}</span>
        </div>

        <#if password.passwordSet>
            <div class="form-group">
                    <v-text-field
                        :rules="[rules.required]"
                        :append-icon="showpassword ? '$vuetify.icons.eyeOpen' : '$vuetify.icons.eye'"
                        prepend-inner-icon="$vuetify.icons.password"
                        :type="showpassword ? 'text' : 'password'"
                        id="password"
                        filled
                        outlined
                        name="password"
                        autocomplete="off"
                        placeholder="Enter Password"
                        label="${msg("password")}"
                        @click:append="showpassword = !showpassword"
                        tabindex="2"
                        autocomplete="current-password"
                        persistent-placeholder
                    ></v-text-field>
            </div>
        </#if>

        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">

        <div class="form-group">
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
                ></v-text-field>
        </div>

        <div class="form-group">
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
            ></v-text-field>
        </div>

        <div class="text-right" style="margin-bottom: 30px;">
            <span class="subtitle"><span class="required">*</span> ${msg("allFieldsRequired")}</span>
            <br>
        </div>
        <div class="form-group">
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
                ${msg("doSave")}
            </v-btn>
        </div>
    </form>

</@layout.mainLayout>
