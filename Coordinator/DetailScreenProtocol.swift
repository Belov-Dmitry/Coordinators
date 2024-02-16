//
//  DetailScreenProtocol.swift
//  Coordinator
//
//  Created by Dmitry Belov on 11.01.2024.
//

import Foundation
// Протокол для экрана деталей элемента
protocol DetailScreenProtocol: AnyObject {
    var coordinator: Coordinator? { get set }
    func showItemDetails(item: String)
}
