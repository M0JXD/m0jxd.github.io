const { DateTime } = require("luxon");

module.exports = function (eleventyConfig) {
	eleventyConfig.addPassthroughCopy("bundle.css");
	eleventyConfig.setInputDirectory("src");
	eleventyConfig.addPassthroughCopy("img");
    eleventyConfig.addFilter("ddmmyy", (dateObj) => {
      return DateTime.fromJSDate(dateObj).toFormat("dd/MM/yy");
    });
};

module.exports.config = {
	markdownTemplateEngine: "njk",
	htmlTemplateEngine: "njk",
};


