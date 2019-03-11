module.exports = {
  title: "Flutter Hands On",
  description: "A hands on workshop to learn Flutter step by step",
  themeConfig: {
    lastUpdated: 'Last Updated',
    sidebar: 'auto',
    nav: [
      { text: "Get Started", link: "/guide/" },
      {
        text: 'Exercises',
        items: [
          { text: 'Basic app', link: '/exercices/basic-app/' },
          { text: 'Single Child', link: '/exercices/basic-single-child-widgets/' },
          { text: 'Multi Child', link: '/exercices/basic-multi-child-widgets/' },
          { text: 'List Builder', link: '/exercices/list-builder/' },
          { text: 'Routing', link: '/exercices/routing/' },
          { text: 'Stateless', link: '/exercices/stateless-widget/' },
          { text: 'Stateful', link: '/exercices/statefull-widget/' },
        ]
      },
      { text: "Flutter.io", link: "https://flutter.dev" },
    ],
    serviceWorker: {
        updatePopup: true // Boolean | Object, default to undefined.
        // If set to true, the default text config will be: 
        // updatePopup: { 
        //    message: "New content is available.", 
        //    buttonText: "Refresh" 
        // }
      }
  },
  plugins: [
    "@vuepress/active-header-links",
    {
      sidebarLinkSelector: ".sidebar-link",
      headerAnchorSelector: ".header-anchor",
      headerTopOffset: 120
    }
  ]
};

// TODO: Add Github contribute url https://v1.vuepress.vuejs.org/theme/default-theme-config.html#git-repo-and-edit-links

// TODO: Move everything to a sub folder /workshop/ 
