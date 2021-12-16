<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "header">
        <v-card-text>
            ${msg("deleteAccountConfirm")}
        </v-card-text>
   <#elseif section = "form">

    <form action="${url.loginAction}" class="form-vertical" method="post">

       <p class="alert alert-warning" style="margin-top:0 !important;margin-bottom:30px !important">
           <span class="pficon pficon-warning-triangle-o"></span>
           ${msg("irreversibleAction")}
       </p>

       <p>${msg("deletingImplies")}</p>
       <ul style="color: #72767b;list-style: disc;list-style-position: inside;">
         <li>${msg("loggingOutImmediately")}</li>
         <li>${msg("errasingData")}</li>
       </ul>
       <br/>
        <p class="delete-account-text">${msg("finalDeletionConfirmation")}</p>

      <div id="kc-form-buttons">
        <v-row>
            <v-col cols="6">
                <v-btn block color="primary" large elevation="0" :ripple="false" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doConfirmDelete")}" >${msg("doConfirmDelete")}</v-btn>
            </v-col>
            <#if triggered_from_aia>
            <v-col cols="6">
                <v-btn block color="primary" large elevation="0" outlined :ripple="false" class="${properties.kcButtonClass!} ${properties.kcButtonDefaultClass!} ${properties.kcButtonLargeClass!}" type="submit" name="cancel-aia" value="true" />${msg("doCancel")}</v-btn>
            </v-col>
            </#if>
        <v-row>
       </div>
    </form>
   </#if>
</@layout.registrationLayout>