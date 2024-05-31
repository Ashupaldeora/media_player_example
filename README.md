<h3 align="center"><i>1. Carousel Slider</i></h3>
<h1></h1>

# Carousel Slider

A Flutter carousel slider widget with various customization options.

## Features

- Infinite scroll
- Custom child widgets
- Auto play
- Enlarge center page
- Customizable animations
- Carousel controller

## Supported Platforms

- Android
- iOS
- Web
- Desktop

## Installation

Add the dependency to your `pubspec.yaml`:

```yaml
dependencies:
  carousel_slider: ^4.2.1
```

# Usage
## Basic Example
```dart
CarouselSlider(
  options: CarouselOptions(height: 400.0),
  items: [1, 2, 3, 4, 5].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(color: Colors.amber),
          child: Text('text $i', style: TextStyle(fontSize: 16.0)),
        );
      },
    );
  }).toList(),
)
```

# Custom Options

```dart
CarouselSlider(
  items: items,
  options: CarouselOptions(
    height: 400,
    aspectRatio: 16/9,
    viewportFraction: 0.8,
    initialPage: 0,
    enableInfiniteScroll: true,
    reverse: false,
    autoPlay: true,
    autoPlayInterval: Duration(seconds: 3),
    autoPlayAnimationDuration: Duration(milliseconds: 800),
    autoPlayCurve: Curves.fastOutSlowIn,
    enlargeCenterPage: true,
    enlargeFactor: 0.3,
    onPageChanged: callbackFunction,
    scrollDirection: Axis.horizontal,
  ),
)
```

<div align="center">
  <img src="https://github.com/Ashupaldeora/media_player_example/assets/143180848/6698727d-db73-46d4-956e-2b0e62c8a767" height=500px >
  <img src="https://github.com/Ashupaldeora/media_player_example/assets/143180848/ae444395-8617-46cc-984a-25bb6d23191d" height=500px >
  <img src="https://github.com/Ashupaldeora/media_player_example/assets/143180848/7131cf65-7e4c-41a4-80ba-585b47b5ef86" height=500px >
  
  <video src="https://github.com/Ashupaldeora/media_player_example/assets/143180848/3233dcfe-ab2c-49fa-88d6-475f1f33658e"></video>
  





