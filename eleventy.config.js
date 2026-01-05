module.exports = function (eleventyConfig) {
	eleventyConfig.addPassthroughCopy("bundle.css");
	eleventyConfig.addPassthroughCopy("bundle-dark.css");
	eleventyConfig.setInputDirectory("src");
	eleventyConfig.addPassthroughCopy("img");
};

module.exports.config = {
	markdownTemplateEngine: "njk",
	htmlTemplateEngine: "njk",
};
