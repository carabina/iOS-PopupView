//
//  PopupView.swift
//  iOS-PopupView
//
//  Created by Apple on 29/9/2560 BE.
//

import Foundation
import UIKit

public class PopupView: NSObject {
    
    private var backgroundView = UIView()
    private var contentView: UIView!
    
    public func show(view: UIView, backgroundColor: UIColor, Animation animated: Bool, timeInterval: TimeInterval? = nil) {
        let withDuration = timeInterval ?? 0.1
        guard let rootView = UIApplication.shared.keyWindow else {
            return
        }
        backgroundView.backgroundColor = backgroundColor
        backgroundView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        backgroundView.frame = rootView.bounds
        rootView.addSubview(backgroundView)
        
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.frame = backgroundView.bounds
        view.subviews.first?.backgroundColor = .clear
        backgroundView.addSubview(view)
        contentView = view
        
        if animated {
            view.transform = CGAffineTransform(scaleX: 0.25, y: 0.25)
            UIView.animate(withDuration: withDuration, delay: 0, options: .curveEaseOut, animations: {
                view.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
            }, completion: { (success) in
                UIView.animate(withDuration: withDuration, delay: 0, options: .curveEaseOut, animations: {
                    view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    view.transform = CGAffineTransform.identity
                }, completion: nil)
            })
        }else {
            view.alpha = 0
            UIView.animate(withDuration: withDuration, animations: {
                view.alpha = 1
            })
        }
        
    }
    public func dismiss(completion: (() -> Swift.Void)? = nil) {
        contentView.removeFromSuperview()
        backgroundView.removeFromSuperview()
        completion?()
    }
    public func dismissFromView(_ view: UIView){
        view.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(dismissView)))
        
    }
    @objc private func dismissView() {
        dismiss()
    }
    
}

