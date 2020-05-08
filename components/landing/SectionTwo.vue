<template>
  <v-container fluid class="section-two">
    <v-row>
      <v-spacer></v-spacer>
      <v-col sm="12" md="4" lg="4" cols="12">
        <h3 class="d-none d-md-flex align-center">Join our Telegram community</h3>
        <h3 class="d-block d-md-none d-sm-block text-center pl-0">Join our Telegram community</h3>
      </v-col>
      <v-col sm="12" md="1" lg="1" cols="12">
        <h3 class="d-none d-md-flex align-center">
          <a :href="`https://t.me/kubernetesindonesia`" target="_blank">
            <v-img contain max-width="100px" src="/telegram.png" />
          </a>
        </h3>
        <h3 class="d-block d-md-none d-sm-block text-center pl-0">
          <a :href="`https://t.me/kubernetesindonesia`" target="_blank">
            <v-img contain max-width="100px" src="/telegram.png" />
          </a>
        </h3>
      </v-col>
      <v-col sm="12" md="1" lg="1" cols="12">
        <h3 class="d-none d-md-flex align-center">
          <a :href="`https://t.me/dockeridn`" target="_blank">
            <v-img contain max-width="100px" src="/telegram.png" />
          </a>
        </h3>
        <h3 class="d-block d-md-none d-sm-block text-center pl-0">
          <a :href="`https://t.me/kubernetesindonesia`" target="_blank">
            <v-img contain max-width="100px" src="/telegram.png" />
          </a>
        </h3>
      </v-col>
      <v-spacer></v-spacer>
      <v-spacer></v-spacer>
    </v-row>
  </v-container>
</template>

<script>
import SlackInvite from "~/graphql/slackInvite.gql";
export default {
  data: () => ({
    email: "",
    response: "",
    snackbar: false
  }),
  methods: {
    sendInvite() {
      this.$apollo
        .mutate({
          mutation: SlackInvite,
          variables: { data: this.email }
        })
        .then(success => {
          this.response = success.data.slackInvite;
          this.snackbar = true;
          this.email = "";
        })
        .catch(error => {});
    }
  }
};
</script>