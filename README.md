# EcpWebView

This is only a WKWebView wrapper. NetworkActivityIndicator is automatically turned on during loading and turned off on finish loading.

## Installation

You can install via CocoaPods

```ruby
# required Swift 3.0
pod 'EcpWebView'
```

## Usage

You can simply replace `WKWebView` to `EcpWebView`

```swift
let webView = EcpWebView()
view.addSubview(webView)

let req = URLRequest(url: URL(string: "https://memo.ecp.plus/")!)
webView.load(req)
```

`WKWebView` can't be used in StoryBoards, so the code following will help you. 

```swift
webView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
webView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
webView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
webView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
```
