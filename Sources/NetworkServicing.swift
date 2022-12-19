public protocol NetworkServicing {
    associatedtype Responce
    func fetchModel(_ completion: @escaping (Result<Responce, Error>) -> Void)
    func fetchListModel(_ completion: @escaping (Result<[Responce], Error>) -> Void)
}

extension NetworkServicing {
    func fetchListModel(_ completion: @escaping (Result<[Responce], Error>) -> Void) {
        return
    }
}
