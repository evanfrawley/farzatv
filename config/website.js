const tailwind = require('../tailwind');

module.exports = {
  pathPrefix: '/', // Prefix for all links. If you deploy your site to example.com/portfolio your pathPrefix should be "/portfolio"

  siteTitle: 'FarzaTV - Personal Site', // Navigation and Site Title
  siteTitleAlt: 'FarzaTV', // Alternative Site title for SEO
  siteUrl: 'https://farza.tv', // Domain of your site. No trailing slash!
  siteLanguage: 'en', // Language Tag on <html> element
  siteLogo: '/logos/farza.jpg', // Used for SEO and manifest
  siteDescription: 'Personal site for Farza. Deep learning engineer, self diriving cars, memes, and games.',

  // siteFBAppID: '123456789', // Facebook App ID - Optional
  userTwitter: '@farzatv', // Twitter Username

  // Manifest and Progress color
  themeColor: tailwind.colors.orange,
  backgroundColor: tailwind.colors.blue,
};
