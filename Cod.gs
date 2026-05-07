function doGet(e) {
  var page = 'index';
    if (e && e.parameter && e.parameter.page && e.parameter._nav === '1') {
    page = e.parameter.page;
}

  var template = HtmlService.createTemplateFromFile(page);
  template.scriptUrl = ScriptApp.getService().getUrl(); // <<< IMPORTANT

  return template
    .evaluate()
    .setXFrameOptionsMode(HtmlService.XFrameOptionsMode.ALLOWALL);
}