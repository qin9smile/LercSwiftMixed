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
  }

  /// export file button action
  @IBAction private func _exportFileButtonDidTapped(_ sender: NSButton) {
  }
}

