class App.TabBar extends EmberMobile.TabbarControllerView
  content:[
    EmberMobile.TabItem.create({
      icon: "&#xF0DD;"
      title: "Friends"
      route: "friends"
    }),
    EmberMobile.TabItem.create({
      icon: "&#xF049;"
      title: "Favorites"
      route: "favorites"
    }),
    EmberMobile.TabItem.create({
      icon: "&#xF06A;"
      title: "Songs"
      route: "songs"
    }),
    EmberMobile.TabItem.create({
      icon: "&#xF078;"
      title: "Pictures"
      route: "pictures"
    })
  ]
