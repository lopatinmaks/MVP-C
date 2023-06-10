//
//  DetailPresenter.swift
//  MVP+C
//
//  Created by Максим Лопатин on 10.06.2023.
//

import Foundation

protocol DetailViewProtocol: class {
    func setComment(comment: Comment?)
}

protocol DetailViewPresenterProtocol: class {
    init(view: DetailViewProtocol, networkService: NetworkServiceProtocol, comment: Comment?)
    func setComment()
}

class DetailPresenter: DetailViewPresenterProtocol {
    weak var view: DetailViewProtocol?
    let networkService: NetworkServiceProtocol!
    var comment: Comment?
    
    required init(view: DetailViewProtocol, networkService: NetworkServiceProtocol, comment: Comment?) {
        self.view = view
        self.networkService = networkService
        self.comment = comment
    }
    
    public func setComment() {
        self.view?.setComment(comment: comment)
    }
}
