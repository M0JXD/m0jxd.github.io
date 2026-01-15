const { DateTime } = require("luxon");

module.exports = function (eleventyConfig) {
	eleventyConfig.addPassthroughCopy("bundle.css");
	eleventyConfig.setInputDirectory("src");
	eleventyConfig.addPassthroughCopy("img");
    eleventyConfig.addFilter("datefilter", (dateObj) => {
      return DateTime.fromJSDate(dateObj).toLocaleString(DateTime.DATE_HUGE);
    });
};

module.exports.config = {
	markdownTemplateEngine: "njk",
	htmlTemplateEngine: "njk",
};


