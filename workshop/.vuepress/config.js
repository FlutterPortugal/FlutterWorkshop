module.exports = {
  title: "Flutter Hands On",
  description: "A hands on workshop to learn Flutter step by step",
  themeConfig: {
    // Assumes GitHub. Can also be a full GitLab url.
    repo: 'OldMetalmind/FlutterWorkshop',
    // Customising the header label
    // Defaults to "GitHub"/"GitLab"/"Bitbucket" depending on `themeConfig.repo`
    repoLabel: 'Contribute!',
    // Optional options for generating "Edit this page" link
    // if your docs are in a different repo from your main project:
    //docsRepo: 'vuejs/vuepress',
    // if your docs are not at the root of the repo:
    docsDir: 'workshop',
    // if your docs are in a specific branch (defaults to 'master'):
    //docsBranch: 'master',
    // defaults to false, set to true to enable
    editLinks: true,
    // custom text for edit link. Defaults to "Edit this page"
    editLinkText: 'Help us improve this page!',
    lastUpdated: 'Last Updated',
    sidebar: 'auto',
    nav: [
      { text: "Get Started", link: "/guide/" },
      {
        text: 'Exercises',
        items: [
          { text: 'Basic app', link: '/exercises/basic-app/' },
          { text: 'Single Child Widgets', link: '/exercises/basic-single-child-widgets/' },
          { text: 'Multi Child Widgets', link: '/exercises/basic-multi-child-widgets/' },
          { text: 'List Builder', link: '/exercises/list-builder/' },
          { text: 'Routing', link: '/exercises/routing/' },
          { text: 'Stateless', link: '/exercises/stateless-widget/' },
          { text: 'Stateful', link: '/exercises/stateful-widget/' },
        ]
      },
      { text: "Flutter.dev", link: "https://flutter.dev" },
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
