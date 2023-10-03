import { addComponent, createResolver, defineNuxtModule } from "@nuxt/kit";

export interface ModuleOptions {}

export default defineNuxtModule<ModuleOptions>({
  meta: {
    name: "MongoLayout",
    configKey: "MongoLayout",
  },
  defaults: {},
  setup(options, nuxt) {
    const { resolve } = createResolver(import.meta.url);
    addComponent({
      name: "MongoLayout", // name of the component to be used in vue templates
      global: true,
      filePath: resolve("./runtime/MongoLayout.vue"),
    });
  },
});
