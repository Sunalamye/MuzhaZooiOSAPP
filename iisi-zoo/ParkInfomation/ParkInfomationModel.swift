//
//  ParkInfomationModel.swift
//  iisi-zoo
//
//  Created by Suoie on 2023/7/22.
//

import RxSwift
import RxCocoa

class ParkInformationViewModel {

    let parkInformation = BehaviorRelay<[ParkInformation]>(value: [])
    private let disposeBag = DisposeBag()

    init() {
        fetchData()
    }

    func fetchData() {
        // Start a new task for fetching data
        Task.init {
            do {
                let parkInformation = try await APIManager.share.getParkInformation()
                DispatchQueue.main.async {
                    self.parkInformation.accept(parkInformation.result.results ?? [])
                }
            } catch {
                // Handle error
                print(error)
            }
        }
    }
}

class PlantInformationViewModel {

    let plantInformation = BehaviorRelay<[PlantModel]>(value: [])
    private let disposeBag = DisposeBag()

    init() {
        fetchData()
    }

    func fetchData() {
        // Start a new task for fetching data
        Task.init {
            do {
                let plantInformation = try await APIManager.share.getPlantInformation()
                DispatchQueue.main.async {
                    self.plantInformation.accept(plantInformation.result.results ?? [])
                }
            } catch {
                // Handle error
                print(error)
            }
        }
    }
}
