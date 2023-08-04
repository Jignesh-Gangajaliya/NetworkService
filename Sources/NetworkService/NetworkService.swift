//
//  NetworkService.swift
//  
//
//  Created by Gangajaliya, Jignesh on 03/08/23.
//
import Foundation

public enum NetworkError: Error {
    case invalidURL
    case emptyData
    case noNetwork
    case network(Error)
}

protocol NetworkClient {
    func fetch<T:Decodable>(urlRequest: URLRequest?,
                              resultType: T.Type,
                              completionHandler: @escaping(Result<T, NetworkError>)-> Void)
}

public class NetworkService: NetworkClient {
    public init() {}

    public func fetch<T:Decodable>(urlRequest: URLRequest?,
                              resultType: T.Type,
                                     completionHandler: @escaping(Result<T, NetworkError>)-> Void) {
        completionHandler(.failure(.invalidURL))
    }

}
