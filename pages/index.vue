<template>
  <section style="color: black;">
    <section-one></section-one>
    <section-two></section-two>
    <section-map></section-map>
    <section-three></section-three>
    <section-four></section-four>
  </section>
</template>

<script>
import SlackInvite from "~/graphql/slackInvite.gql";
import SectionOne from "~/components/landing/SectionOne.vue";
import SectionTwo from "~/components/landing/SectionTwo.vue";
import SectionThree from "~/components/landing/SectionThree.vue";
import SectionMap from "~/components/landing/SectionMap.vue";
import SectionFour from "~/components/landing/SectionFour.vue";
export default {
  components: {
    SectionOne: SectionOne,
    SectionTwo: SectionTwo,
    SectionMap: SectionMap,
    SectionThree: SectionThree,
    SectionFour: SectionFour
  }
};
</script>

<style scoped>
</style>
