//
//  ListScreenProtocol.swift
//  Coordinator
//
//  Created by Dmitry Belov on 11.01.2024.
//

import Foundation
// Протокол для экрана списка элементов
protocol ListScreenProtocol: AnyObject {
    var coordinator: Coordinator? { get set }
}
