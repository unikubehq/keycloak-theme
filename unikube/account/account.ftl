<#import "template.ftl" as layout>
<@layout.mainLayout active='account' bodyClass='user'; section>

    <div class="col-12">
        <h1 class="headline">
            <v-card-text>
                ${msg("editAccountHtmlTitle")}
            </v-card-text>
        </h1>
    </div>


    <form action="${url.accountUrl}" class="form-horizontal col-8 offset-2" method="post">

        <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">

        <#if !realm.registrationEmailAsUsername>
            <div class="form-group ${messagesPerField.printIfExists('username','has-error')}">
                <v-text-field
                    :rules="[rules.required]"
                    prepend-inner-icon="$vuetify.icons.email"
                    type="text"
                    <#if !realm.editUsernameAllowed>disabled="disabled"</#if>
                    value="${(account.username!'')}"
                    id="username"
                    autocomplete="username"
                    filled
                    outlined
                    name="username"
                    autocomplete="off"
                    placeholder="Enter ${msg("username")}"
                    label="${msg("username")}"
                    tabindex="2"
                    persistent-placeholder
                ></v-text-field>
            </div>
        </#if>

        <div class="form-group ${messagesPerField.printIfExists('email','has-error')}">
            <v-text-field
                :rules="[rules.required]"
                prepend-inner-icon="$vuetify.icons.email"
                type="text"
                value="${(account.email!'')}"
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
            ></v-text-field>
        </div>

        <div class="form-group ${messagesPerField.printIfExists('firstName','has-error')}">
            <v-text-field
                :rules="[rules.required]"
                prepend-inner-icon="$vuetify.icons.email"
                type="text"
                value="${(account.firstName!'')}"
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
            ></v-text-field>
        </div>

        <div class="form-group ${messagesPerField.printIfExists('lastName','has-error')}">
            <v-text-field
                :rules="[rules.required]"
                prepend-inner-icon="$vuetify.icons.email"
                type="text"
                value="${(account.lastName!'')}"
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
            ></v-text-field>
        </div>


        <div class="text-right" style="margin-bottom: 30px;">
            <span class="subtitle"><span class="required">*</span> ${msg("requiredFields")}</span>
            <br>
        </div>
        <div class="form-group">
            <div id="kc-form-buttons">
                <v-row>
                    <#if url.referrerURI??><a href="${url.referrerURI}">${kcSanitize(msg("backToApplication")?no_esc)}</a></#if>
                    <v-col cols="8">
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
                    </v-col>
                    <v-col cols="4">
                        <v-btn
                            block
                            color="primary"
                            outlined
                            name="submitAction"
                            id="kc-login"
                            large
                            elevation="0"
                            :ripple="false"
                            @click="submit"
                            :loading="loading"
                            type="submit"
                            tabindex="4"
                            value="Cancel"
                        >
                            ${msg("doCancel")}
                        </v-btn>

                    </v-col>
                </v-row>
            </div>
        </div>
    </form>

</@layout.mainLayout>
