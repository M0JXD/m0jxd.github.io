const DateTime = require("luxon").DateTime;

module.exports = function (eleventyConfig) {
  eleventyConfig.addPassthroughCopy({ "resources/*": "/" });
  eleventyConfig.addPassthroughCopy("img");
  eleventyConfig.setInputDirectory("src");
  eleventyConfig.addFilter("datefilter", (dateObj) => {
    return DateTime.fromJSDate(dateObj).toLocaleString(DateTime.DATE_HUGE);
  });
};

module.exports.config = {
  markdownTemplateEngine: "njk",
  htmlTemplateEngine: "njk",
};
