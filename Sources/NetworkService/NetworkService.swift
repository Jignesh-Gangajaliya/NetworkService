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
    case authenticationError
    case network(Error)
}

protocol NetworkClient {
    open func fetch<T:Decodable>(url: URL,
                              resultType: T.Type,
                              completionHandler: @escaping(Result<T, NetworkError>)-> Void)
}

open class NetworkService: NetworkClient {
    public init() {}

    open func fetch<T:Decodable>(url: URL,
                              resultType: T.Type,
                                     completionHandler: @escaping(Result<T, NetworkError>)-> Void) {
        completionHandler(.failure(.authenticationError))
    }

}
