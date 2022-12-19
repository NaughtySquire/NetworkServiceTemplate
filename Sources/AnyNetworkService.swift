public class AnyNetworkService<ResponceType: Decodable>: NetworkServicing {

    // MARK: - callbacks
    private let fetchListModelClosure: (_ completion: @escaping (Result<[ResponceType], Error>) -> Void) -> Void
    private let fetchModelClosure: (_ completion: @escaping (Result< ResponceType, Error>) -> Void) -> Void

    // MARK: - init
    public init<ServiceType: NetworkServicing>(_ service: ServiceType) where ServiceType.Responce == ResponceType {
        fetchListModelClosure = service.fetchListModel
        fetchModelClosure = service.fetchModel
    }

    // MARK: - functions
    public func fetchListModel(_ completion: @escaping (Result<[ResponceType], Error>) -> Void) {
        fetchListModelClosure(completion)
    }

    public func fetchModel(_ completion: @escaping (Result<ResponceType, Error>) -> Void) {
        fetchModelClosure(completion)
    }
}
