//
//  XMLParser1.swift
//  Weather1
//
//  Created by Sawakit on 12/1/59.
//  Copyright © พ.ศ. 2559 bananacoding. All rights reserved.
//

import UIKit

class XMLParser1: NSObject, NSXMLParserDelegate {
    
    private var parser1 = NSXMLParser()
    private var element1 = String()
    var weather1 = Weather1()
    
    init(url1: String) {
        super.init()
        
        let urlToSend: NSURL = NSURL(string: url1)!
        parser1 = NSXMLParser(contentsOfURL: urlToSend)!
        parser1.delegate = self
        
        let success: Bool = parser1.parse()
        
        if success {
            print("parse success")
        }
    }
    
    func parser(parser1: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?,attributes attributeDict: [String : String]) {
        
        element1 = elementName
        
        if elementName == "woeid" {
            weather1 = Weather1()
        }
        
        print(" ---------  111======111 re1")
 
    }
    
    func parser(parser1: NSXMLParser, foundCharacters string: String) {
        if element1 == "woeid" {
            weather1.woeid += string
        }
        print(string)
    }
    
    func parser(parser1: NSXMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "woeid" {
            return;
        }
        print("Re3")
    }
    
    func parser(parser1: NSXMLParser, parseErrorOccurred parseError: NSError) {
        print("parse failure! error: \(parseError)");
    }
}

