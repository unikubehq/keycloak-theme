<#import "template.ftl" as layout>
<@layout.emailLayout; section>
    <#if section = "heading">
        TOTP Removed
    <#elseif section = "text">
        ${kcSanitize(msg("eventRemoveTotpBodyHtml",event.date, event.ipAddress))?no_esc}
    <#elseif section = "greetings">
        kind regards, <br>
        Hannes, Michael and Robert
    </#if>
</@layout.emailLayout>
