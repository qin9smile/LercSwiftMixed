//
//  ViewController.swift
//  LercSwiftMixed
//
//  Created by charlotte on 2018/1/29.
//  Copyright © 2018年 gago. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

  // MARK: - Properties

  @IBOutlet weak var importFileButton: NSButton!
  @IBOutlet weak var exportFileButton: NSButton!
  @IBOutlet weak var attributeView: NSView!
  @IBOutlet weak var imageWrapperView: NSView!
  @IBOutlet weak var lercImageView: NSImageView!

  private var _chosenFileURL: URL?
  private var _fileImport: NSImage?

  // MARK: - Life Cycle

  override func viewDidLoad() {
    super.viewDidLoad()
    
  }

  override var representedObject: Any? {
    didSet {
    // Update the view, if already loaded.
    }
  }

  // MARK: - Actions

  /// import file button action
  @IBAction private func _importFileButtonDidTapped(_ sender: NSButton) {
    // init file picker
    let filePicker: NSOpenPanel! = NSOpenPanel()
    filePicker.allowsMultipleSelection = false
    filePicker.canChooseDirectories = false
    filePicker.canChooseFiles = true

    // open file picker
    filePicker.runModal()

    // get chosen file url
    guard let chosenFile = filePicker.url else {
      print("there has no chosen file")
      return
    }

    _chosenFileURL = chosenFile
    let lercMixed = LercMixed()
    let image = lercMixed.lerc_decode_wrapper(chosenFile)
    // show in lercImageView
    let fileImport = NSImage(contentsOf: chosenFile)
    _fileImport = fileImport
    lercImageView.image = image
  }

  /// export file button action
  @IBAction private func _exportFileButtonDidTapped(_ sender: NSButton) {

    guard _chosenFileURL != nil else {
      print("there is no chosen file")
      return
    }

    // init SavePanel
    let savePicker: NSSavePanel! = NSSavePanel()
    savePicker.allowedFileTypes = ["jpg", "png"]
    savePicker.allowsOtherFileTypes = true
    savePicker.isExtensionHidden = false
    savePicker.canSelectHiddenExtension = true

    // open SavePanel
    savePicker.begin { result in
      if result.rawValue == NSApplication.ModalResponse.OK.rawValue {
        // get export file url
        let exportedFileURL = savePicker.url

        // export file to url
        if let image = self._fileImport {
          if let bits = image.representations.first as? NSBitmapImageRep {
            let data = bits.representation(using: .jpeg, properties: [:])
            do {
              try data?.write(to: exportedFileURL!, options: .atomic)
            } catch {
              print(error.localizedDescription)
            }
          }
        }
      }
    }
  }
}

