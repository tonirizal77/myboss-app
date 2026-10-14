import Cocoa
import FlutterMacOS

class MainFlutterWindow: NSWindow {
  override func awakeFromNib() {
    let flutterViewController = FlutterViewController()
    let windowFrame = self.frame
    self.contentViewController = flutterViewController

    #if DEBUG
    // Responsive testing: MYBOSS_WINDOW_SIZE=400x800 (phone), 820x1000 (tablet),
    // 1400x900 (desktop). Content size in points; ignored in Release builds.
    // Applied on the next run-loop turn because the Flutter view controller
    // resets the window size to the nib size while it attaches.
    if let spec = ProcessInfo.processInfo.environment["MYBOSS_WINDOW_SIZE"] {
      let parts = spec.lowercased().split(separator: "x").compactMap { Double($0) }
      if parts.count == 2 {
        DispatchQueue.main.async {
          let visible = NSScreen.main?.visibleFrame ?? NSRect(x: 0, y: 0, width: 1440, height: 900)
          var frame = self.frameRect(
            forContentRect: NSRect(x: 0, y: 0, width: parts[0], height: parts[1]))
          // Keep the window on screen (top-left corner of the visible area).
          frame.origin.x = visible.minX
          frame.origin.y = max(visible.minY, visible.maxY - frame.height)
          self.setFrame(frame, display: true)
          self.makeKeyAndOrderFront(nil)
        }
      }
    }
    #endif

    self.setFrame(windowFrame, display: true)

    RegisterGeneratedPlugins(registry: flutterViewController)

    super.awakeFromNib()
  }
}
