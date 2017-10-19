//: [Previous](@previous)

import Foundation

/*错误处理*/

enum PrinterError: Error {
    case outOfPaper
    case NoToner
    case OnFire
}


func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.NoToner
    }
    return "Job send"
}

