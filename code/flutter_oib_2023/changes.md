# Personalizzazione app

Nel file `app.dart` è possibile personalizzare leggermente il tema dell'applicazione andando a cambiare i valori in `ThemeData`

```dart
theme: ThemeData(
   useMaterial3: true,
   colorSchemeSeed: Colors.red,
   brightness: Brightness.light,
),
```

# News

## Modifica alla UI della lista delle news

Andare nel file `news_screen.dart` e modificare la parte di `ListView.builder` per caricare la nuova classe `NewsCard` che permette di personalizzare la UI

```dart
return ListView.builder(
   shrinkWrap: true,
   itemCount: data!.length,
   itemBuilder: (_, int index) {
      return NewsCard(article: data[index]);
   },
);
```

Nel file `news_card.dart` modificare la parte del build per ritornare una ListTile per migliorare la UI

```dart
return ListTile(
   onTap: () => PlatformUtils.openExternalLink(article.url!),
   title: Text(article.title!),
   subtitle: Text(article.author!),
   leading: Icon(
      Icons.newspaper_outlined,
      color: colorScheme.primary,
   ),
);
```

## Modificare la UI per adattarsi alla larghezza della finestra

Andare nel file `news_screen.dart` e nella parte del data aggiungere la gestione della UI che si adatta alla larghezza della finestra

```dart
if (screenSizeWidth < WindowSizeEnum.tabletPortrait.width) {
   return ListView.builder(
      shrinkWrap: true,
      itemCount: data!.length,
      itemBuilder: (_, int index) {
         return NewsCard(article: data[index]);
      },
   );
} else {
   return AlignedGridView.count(
      itemCount: data!.length,
      crossAxisCount: screenSizeWidth < WindowSizeEnum.desktop.width ? 2 : 3,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      itemBuilder: (_, index) {
         return NewsCard(article: data[index]);
      },
   );
}
```

# Gallery

Andare nel file `gallery_screen.dart` e modificare la parte di `MasonryGridView.count` per caricare la nuova classe `GalleryCard` che permette di personalizzare la UI

```dart
return MasonryGridView.count(
   crossAxisCount: _getColumnsNumber(screenSizeWidth),
   itemCount: data!.length,
   itemBuilder: (_, index) {
   return GalleryCard(
      photo: data[index],
   );
   },
);
```

Nel file `gallery_card.dart` modificare la parte del build per ritornare un Container per migliorare la UI

```dart
return Container(
   padding: const EdgeInsets.all(16),
   child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Image.network(photo.src!.medium!),
         Text(
            "${photo.alt}",
            style: textTheme.labelMedium,
         ),
         Text(
            "${photo.photographer}",
            style: textTheme.labelSmall,
         ),
      ],
   ),
);
```

## Modifica del numero delle colonne

Nel file `gallery_screen.dart` modificare la funzione `_getColumnsNumber` per tornare un numero di colonne diverse sulla base della larghezza della finestra

```dart
int _getColumnsNumber(double screenSizeWidth) {
   if (screenSizeWidth <= WindowSizeEnum.tabletPortrait.width) {
      return 2;
   } else if (WindowSizeEnum.tabletPortrait.width < screenSizeWidth &&
      screenSizeWidth <= WindowSizeEnum.tabletLandscape.width) {
      return 3;
   } else if (WindowSizeEnum.tabletLandscape.width < screenSizeWidth &&
      screenSizeWidth <= WindowSizeEnum.desktop.width) {
      return 4;
   } else if (screenSizeWidth > WindowSizeEnum.desktop.width) {
      return 5;
   }
   return 2;
}
```

# Home

Andare nel file `home_page.dart` e aggiungere altre pagine alla navigazione

```dart
final List<ScreenTab> tabList = [
  ScreenTab(
    label: "News",
    icon: Icons.newspaper,
    content: const NewsScreen(),
  ),
  ScreenTab(
    label: "Gallery",
    icon: Icons.grid_view,
    content: const GalleryScreen(),
  ),
  ScreenTab(
    label: "Desktop",
    icon: Icons.desktop_windows,
    content: const DesktopScreen(),
  ),
  ScreenTab(
    label: "Demo",
    icon: Icons.settings_applications,
    content: const DemoScreen(),
  ),
];
```

Nella parte dello `Scaffold->body` per supportare il NavigationRail aggiungere il codice

```dart
body: Row(
   mainAxisSize: MainAxisSize.max,
   children: [
      if (screenSizeWidth >= WindowSizeEnum.tabletPortrait.width)
      NavigationRail(
         backgroundColor: colorScheme.primaryContainer,
         extended: screenSizeWidth >= WindowSizeEnum.tabletLandscape.width,
         selectedIndex: ref.watch(indexTabProvider),
         // Called when one tab is selected
         onDestinationSelected: (int index) {
            ref.read(indexTabProvider.notifier).state = index;
         },
         // navigation rail items
         destinations: tabList
            .map(
               (singleScreenTab) => NavigationRailDestination(
                  icon: Icon(singleScreenTab.icon),
                  label: Text(singleScreenTab.label),
               ),
            )
            .toList(),
      ),
      Expanded(child: tabList[ref.watch(indexTabProvider)].content),
   ],
),
```

e nella parte di `Scaffold->bottomNavigationBar` aggiungere la gestione della larghezza della finestra

```dart
bottomNavigationBar: screenSizeWidth < WindowSizeEnum.tabletPortrait.width
   ? NavigationBar(
      backgroundColor: colorScheme.primaryContainer,
      onDestinationSelected: (int index) {
         ref.read(indexTabProvider.notifier).state = index;
      },
      selectedIndex: ref.watch(indexTabProvider),
      destinations: tabList
         .map(
            (singleScreenTab) => NavigationDestination(
               icon: Icon(singleScreenTab.icon),
               label: singleScreenTab.label,
            ),
         )
         .toList(),
   )
   : null,
```