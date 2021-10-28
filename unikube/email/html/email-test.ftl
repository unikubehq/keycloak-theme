<#import "template.ftl" as layout>
<@layout.emailLayout; section>
    <#if section = "heading">
        Welcome to unikube!
    <#elseif section = "text">
        ${kcSanitize(msg("emailTestBodyHtml",realmName))?no_esc}
    <#elseif section = "greetings">
        kind regards, <br>
        Hannes, Michael and Robert
    </#if>
</@layout.emailLayout>
