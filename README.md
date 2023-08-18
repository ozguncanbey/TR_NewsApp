# TR News App

TR News App is a simple iOS application built using SwiftUI that fetches and displays news articles from the NewsAPI. The app showcases SwiftUI's capabilities for creating user interfaces and demonstrates how to perform network requests to retrieve data from an API.

## Features

- Display a list of news articles with their titles and authors.
- Pull-to-refresh functionality to update the list of news articles.
- Well-structured architecture using SwiftUI and Combine.

## Requirements

- Xcode 12 or later
- Swift 5.0 or later
- iOS 14.0 or later

## Screenshots
* (https://github.com/ozguncanbey/TR_NewsApp/assets/138692325/daea15ba-b359-4e01-92e5-a98dc5972b72)
* (https://github.com/ozguncanbey/TR_NewsApp/assets/138692325/01bb7c28-3746-44d8-a72c-a012442de5df)

## Installation

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/TR-News-App.git
   ```

2. Open the project in Xcode:
   ```
   cd TR-News-App
   open TR_NewsApp.xcodeproj
   ```

3. Build and run the app on a simulator or device.

## Usage

- Upon launching the app, it will fetch and display a list of news articles.
- You can pull down the list to trigger a refresh and fetch the latest news articles.
- Tap on a news article to view more details or open the article in a web browser.

## API Key

The app relies on the NewsAPI to retrieve news articles. To use the app, you need to provide your own API key.

1. Sign up at [NewsAPI](https://newsapi.org/) to obtain an API key.
2. Open `API_URLs.swift` in the project and replace `YOUR_API_KEY` with your actual API key.

```swift
static func NewsURL() -> String {
    return "https://newsapi.org/v2/top-headlines?country=tr&apiKey=YOUR_API_KEY"
}
```

## Acknowledgments

This app was created as a practical learning exercise to showcase SwiftUI's capabilities and the fundamentals of networking in iOS app development. It utilizes the [NewsAPI](https://newsapi.org/) to retrieve news articles.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```

Bu örneği kendi projenize göre düzenleyerek kullanabilirsiniz.
