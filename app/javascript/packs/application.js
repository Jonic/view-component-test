import "../components";

const application = Application.start();
const context = require.context("controllers", true, /.js$/);
const context_components = require.context(
  "../../components",
  true,
  /_controller.js$/
);

application.load(
  definitionsFromContext(context).concat(
    definitionsFromContext(context_components)
  )
);
