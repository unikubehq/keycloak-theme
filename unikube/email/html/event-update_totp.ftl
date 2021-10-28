<#import "template.ftl" as layout>
<@layout.emailLayout; section>
    <#if section = "heading">
        TOPT Updated
    <#elseif section = "text">
        ${kcSanitize(msg("eventUpdateTotpBodyHtml",event.date, event.ipAddress))?no_esc}
    <#elseif section = "greetings">
        kind regards, <br>
        Hannes, Michael and Robert
    </#if>
</@layout.emailLayout>
