<template>
  <v-footer app absolute height="100px">
    <v-row align="center">
      <v-spacer></v-spacer>
      <v-col cols="3" md="3" sm="3">
        <v-list-item style="justify-content:center">
          <v-list-item-icon>
            <a href="https://github.com/cloudnative-id" target="_blank">
              <v-img max-height="32px" src="/GitHub-Mark-32px.png" class="github" />
            </a>
          </v-list-item-icon>
          <a
            class="d-none d-md-flex"
            href="https://github.com/cloudnative-id"
            target="_blank"
          >github.com/cloudnative-id</a>
        </v-list-item>
      </v-col>
      <v-col cols="3" md="3" sm="3">
        <v-list-item style="justify-content:center">
          <v-list-item-icon>
            <a href="https://twitter.com/hashtag/CloudNativeID" target="_blank">
              <v-img max-height="36px" src="/twitter.png" class="github" />
            </a>
          </v-list-item-icon>
          <a
            class="d-none d-md-flex"
            href="https://twitter.com/CloudNativeID"
            target="_blank"
            style="display:inline-blok"
          >CloudNativeID</a>
        </v-list-item>
      </v-col>
      <v-col cols="3" md="3" sm="3">
        <div style="text-align:center">
          <a href="https://cloud.google.com" target="_blank">
            <img class="d-none d-md-flex" width="255px" src="/GCP_powered_by.png" />
            <img class="d-flex d-md-none" width="200px" src="/GCP_powered_by.png" />
          </a>
        </div>
      </v-col>
      <v-spacer></v-spacer>
    </v-row>
  </v-footer>
</template>
<script>
export default {
  computed: {}
};
</script>