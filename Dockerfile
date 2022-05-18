FROM quay.io/blueshoe/node14.4-slim AS node

RUN mkdir /app
RUN mkdir /app/unikube
WORKDIR /app
WORKDIR /node

COPY unikube /app/unikube/
COPY unikube/login/resources/package.json /node

RUN cd /node

RUN npm install
FROM quay.io/keycloak/keycloak:15.0.2 AS keycloak
RUN mkdir /opt/jboss/keycloak/themes/unikube/

COPY --from=node /app/unikube /opt/jboss/keycloak/themes/unikube/
COPY --from=node /node/node_modules/vuetify/dist/vuetify.min.css /opt/jboss/keycloak/themes/unikube/login/resources/css/
COPY --from=node /node/node_modules/material-design-icons/iconfont/material-icons.css /opt/jboss/keycloak/themes/unikube/login/resources/css/
COPY --from=node /node/node_modules/vuetify/dist/vuetify.min.css /opt/jboss/keycloak/themes/unikube/login/resources/js/
COPY --from=node /node/node_modules/vue/dist/vue.min.js /opt/jboss/keycloak/themes/unikube/login/resources/js/
COPY --from=node /node/node_modules/vuetify/dist/vuetify.min.js /opt/jboss/keycloak/themes/unikube/login/resources/js/
COPY --from=node /app/unikube/login/theme.prod.properties /opt/jboss/keycloak/themes/unikube/login/theme.properties

COPY --from=node /node/node_modules/vuetify/dist/vuetify.min.css /opt/jboss/keycloak/themes/unikube/account/resources/css/
COPY --from=node /node/node_modules/material-design-icons/iconfont/material-icons.css /opt/jboss/keycloak/themes/unikube/account/resources/css/
COPY --from=node /node/node_modules/vuetify/dist/vuetify.min.css /opt/jboss/keycloak/themes/unikube/account/resources/js/
COPY --from=node /node/node_modules/vue/dist/vue.min.js /opt/jboss/keycloak/themes/unikube/account/resources/js/
COPY --from=node /node/node_modules/vuetify/dist/vuetify.min.js /opt/jboss/keycloak/themes/unikube/account/resources/js/
COPY --from=node /app/unikube/account/theme.prod.properties /opt/jboss/keycloak/themes/unikube/account/theme.properties

COPY ./metrics/keycloak-metrics-spi-2.5.3.jar /opt/jboss/keycloak/standalone/deployments/
