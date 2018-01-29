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

    // show in lercImageView
    let fileImport = NSImage(contentsOf: chosenFile)
    lercImageView.image = fileImport
  }

  /// export file button action
  @IBAction private func _exportFileButtonDidTapped(_ sender: NSButton) {
  }
}

