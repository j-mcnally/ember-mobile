class App.TabBar extends EmberMobile.TabbarControllerView
  content:[
    EmberMobile.TabItem.create({
      icon: "&#xF0DD;"
      title: "Friends"
    }),
    EmberMobile.TabItem.create({
      icon: "&#xF049;"
      title: "Favorties"
    }),
    EmberMobile.TabItem.create({
      icon: "&#xF06A;"
      title: "Songs"
    }),
    EmberMobile.TabItem.create({
      icon: "&#xF078;"
      title: "Pictures"
    })
  ]
