<#import "template.ftl" as layout>
<@layout.emailLayout; section>
    <#if section = "heading">
        Password Update
    <#elseif section = "text">
        ${kcSanitize(msg("eventUpdatePasswordBodyHtml",event.date, event.ipAddress))?no_esc}
    <#elseif section = "greetings">
        kind regards, <br>
        Hannes, Michael and Robert
    </#if>
</@layout.emailLayout>
