//
//  ShowDetailsInterfaces.swift
//  Viper-Demo
//
//  Created by Zvonimir Medak on 07.10.2021..
//  Copyright (c) 2021 Infinum. All rights reserved.
//
//  This file was generated by the 🐍 VIPER generator
//

import UIKit
import RxSwift
import RxCocoa

protocol ShowDetailsWireframeInterface: WireframeInterface {
}

protocol ShowDetailsViewInterface: ViewInterface {
}

protocol ShowDetailsPresenterInterface: PresenterInterface {
    func configure(with output: ShowDetails.ViewOutput) -> ShowDetails.ViewInput
}

protocol ShowDetailsFormatterInterface: FormatterInterface {
    func format(for input: ShowDetails.FormatterInput) -> ShowDetails.FormatterOutput
}

protocol ShowDetailsInteractorInterface: InteractorInterface {
    func getShowDetails(for showId: String) -> Single<Show>
    func getAllReviews(for showId: String) -> Single<[Review]>
}

enum ShowDetails {

    struct ViewOutput {
    }

    struct ViewInput {
        let models: FormatterOutput
        let events: ShowDetailsEvents
    }

    struct FormatterInput {
        let models: Driver<(Show, [Review])>
    }

    struct FormatterOutput {
        let sections: Driver<[TableSectionItem]>
    }

}

struct ShowDetailsEvents {
    let title: Signal<String>
}
