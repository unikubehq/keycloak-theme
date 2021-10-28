<#import "template.ftl" as layout>
<@layout.emailLayout; section>
    <#if section = "heading">
        Action needed
    <#elseif section = "text">
        ${kcSanitize(msg("executeActionsBodyHtml",link, linkExpiration, realmName, requiredActionsText, linkExpirationFormatter(linkExpiration)))?no_esc}
    <#elseif section = "greetings">
        kind regards, <br>
        Hannes, Michael and Robert
    </#if>
</@layout.emailLayout>
