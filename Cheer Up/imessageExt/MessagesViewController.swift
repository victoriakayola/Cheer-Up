//
//  MessagesViewController.swift
//  imessageExt
//
//  Created by Vica Kayola on 1/27/18.
//  Copyright © 2018 Vica Kayola. All rights reserved.
//

import UIKit
import Messages

class MessagesViewController: MSMessagesAppViewController {
    
    let messages: [String] = ["You are paw-some!", "You're the best!", "You are loved!", "You are apreciated!", "Just keep fetching!", ":)", "Thank you for being a great friend!","The best day of your life is still ahead of you!", "This too shall pass.", "You make me look good!", "Everyone needs a friend like you!", "Be strong and courageous. You can do this!", "Your friendship gives me joy.", "I’ll never take you for granted.", "I want you to cheer up in 2 easy steps: whisper “beep boop” to yourself. Repeat until not sad.", "Rainbows only come after the rain.", "Someone who loves you is thinking of you.", "Your smile always makes me happy!", "You are not alone.", "I am always only a call away."]

    
    let pics: [String] = ["bear.png", "bear2.png", "bear3.png", "bear4.png", "bear5.png", "bear6.png", "camel.png", "cat.png","cat2.png","cat3.png","dog1.png", "dog2.png", "dog3.png", "dog4.png", "dog5.png", "dog6.png", "dog7.png", "dog8.png", "dog9.png", "dog10.png", "dog11.png", "dog12.png", "dog13.png", "dog14.png", "dog15.png", "dog16.png", "dog17.png", "dog18.png", "dog19.png", "dog20.png", "friends.png", "hamster.png", "koala.png", "lamb.png", "lamb2.png", "line.png", "monkeyCat.png", "otter.png", "tiger.png", "turtle.png"]
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func button(_ sender: Any) {
        
        
        let msgNum = Int(arc4random_uniform(UInt32(messages.count)))
        let picNum = Int(arc4random_uniform(UInt32(pics.count)))
        
        label.text = "Cheery Text"
                
        let layout = MSMessageTemplateLayout()
       
        layout.caption = messages[msgNum]
        
        
        layout.image = UIImage(named: pics[picNum])
        
        
        let message = MSMessage()
        message.layout = layout
        
        activeConversation?.insert(message, completionHandler: nil)
    }


}
