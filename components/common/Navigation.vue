<template>
  <span>
    <v-app-bar text app flat>
      <v-toolbar-title>
        <nuxt-link to="/" style="position: relative;">
          <v-img width="80%" src="/logo-text-horizontal.svg" />
        </nuxt-link>
      </v-toolbar-title>

      <div class="flex-grow-1"></div>

      <v-toolbar-items class="d-none d-sm-flex">
        <v-btn large text depressed to="/meetup-groups">
          <span>
            <b>Meetup Groups</b>
          </span>
        </v-btn>

        <v-btn large text depressed to="/speakers">
          <span>
            <b>Speakers</b>
          </span>
        </v-btn>

        <v-btn large text depressed to="/sponsors">
          <span>
            <b>Sponsors</b>
          </span>
        </v-btn>

        <v-btn large text depressed to="/events">
          <span>
            <b>Events</b>
          </span>
        </v-btn>
      </v-toolbar-items>

      <v-app-bar-nav-icon color="white" class="d-flex d-sm-none" @click.stop="drawer = !drawer"></v-app-bar-nav-icon>
    </v-app-bar>

    <v-navigation-drawer v-model="drawer" fixed temporary>
      <v-list class="mobile-nav">
        <v-list-item-group subheader three-line v-model="group">
          <nuxt-link to="/" style="position: relative;">
            <v-img width="80%" src="/logo.png" />
          </nuxt-link>
          <v-btn large text depressed block to="/meetup-groups">
            <span>
              <b>Meetup Groups</b>
            </span>
          </v-btn>

          <v-btn large text depressed block to="/speakers">
            <span>
              <b>Speakers</b>
            </span>
          </v-btn>

          <v-btn large text depressed block to="/sponsors">
            <span>
              <b>Sponsors</b>
            </span>
          </v-btn>

          <v-btn large text depressed block to="/events">
            <span>
              <b>Events</b>
            </span>
          </v-btn>
        </v-list-item-group>
      </v-list>
    </v-navigation-drawer>
  </span>
</template>
<script>
export default {
  data: () => ({
    drawer: false,
    group: null
  }),

  watch: {
    group() {
      this.drawer = false;
    }
  }
};
</script>
