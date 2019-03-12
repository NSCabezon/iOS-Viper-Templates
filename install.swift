//
//  install.swift
//  AggregatorLib
//
//  Created by Ivan Cabezon on 01/02/2019.
//  Copyright © 2019 Globile. All rights reserved.
//

import Foundation

let templateNames = ["VIPER Module.xctemplate", "PresenterTests.xctemplate", "VIPER Module UITableView.xctemplate", "InteractorTests.xctemplate"]
let destinationRelativePath = "/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates/Project Templates/iOS/Application"

func printInConsole(_ message:Any){
	print("====================================")
	print("\(message)")
	print("====================================")
}

func moveTemplate() {
	let fileManager = FileManager.default
	let destinationPath = bash(command: "xcode-select", arguments: ["--print-path"]).appending(destinationRelativePath)
	
	for templateName in templateNames {
		do {
			let path = "\(destinationPath)/\(templateName)"
			if !fileManager.fileExists(atPath: path) {
				try fileManager.copyItem(atPath: templateName, toPath: path)
				printInConsole("✅  Template '\(templateName)' installed succesfully 🎉. Enjoy it 🙂")
			} else {
				try _ = fileManager.replaceItemAt(URL(fileURLWithPath: path), withItemAt: URL(fileURLWithPath: templateName))
				printInConsole("✅  Template '\(templateName)' already exists. So has been replaced succesfully 🎉. Enjoy it 🙂")
			}
		}
		catch let error as NSError {
			printInConsole("❌  Ooops! Something went wrong 😡 : \(error.localizedFailureReason!)")
		}
	}
}

func shell(launchPath: String, arguments: [String]) -> String
{
	let task = Process()
	task.launchPath = launchPath
	task.arguments = arguments
	
	let pipe = Pipe()
	task.standardOutput = pipe
	task.launch()
	
	let data = pipe.fileHandleForReading.readDataToEndOfFile()
	let output = String(data: data, encoding: String.Encoding.utf8)!
	if output.count > 0 {
		//remove newline character.
		let lastIndex = output.index(before: output.endIndex)
		return String(output[output.startIndex ..< lastIndex])
	}
	return output
}

func bash(command: String, arguments: [String]) -> String {
	let whichPathForCommand = shell(launchPath: "/bin/bash", arguments: [ "-l", "-c", "which \(command)" ])
	return shell(launchPath: whichPathForCommand, arguments: arguments)
}

moveTemplate()
