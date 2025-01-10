//
//  AppCoordinator.swift
//  SwiftUIComponents
//
//  Created by Fatih Emre on 24.12.2024.
//

import SwiftUI

// MARK: - Coordinator
class AppCoordinator: ObservableObject {
    enum Route: Hashable, Identifiable {
        case home
        case profile
        case settings
        case detail(String)
        case modal

        var id: String {
            switch self {
            case .home: return "home"
            case .profile: return "profile"
            case .settings: return "settings"
            case .detail(let info): return "detail_\(info)"
            case .modal: return "modal"
            }
        }
    }

    @Published var path = NavigationPath()
    @Published var modalRoute: Route? = nil

    func navigate(to route: Route) {
        path.append(route)
    }

    func presentModal(route: Route) {
        modalRoute = route
    }

    func dismissModal() {
        modalRoute = nil
    }

    func goBack() {
        guard !path.isEmpty else { return }
        path.removeLast()
    }

    func resetToRoot() {
        path = NavigationPath()
    }
}

// MARK: - Main View with NavigationStack
struct MainView: View {
    @StateObject private var coordinator = AppCoordinator()

    var body: some View {
        NavigationStack(path: $coordinator.path) {
            HomeView()
                .navigationDestination(for: AppCoordinator.Route.self) { route in
                    switch route {
                    case .home:
                        HomeView()
                    case .profile:
                        ProfileView()
                    case .settings:
                        SettingsView()
                    case .detail(let info):
                        DetailView(info: info)
                    case .modal:
                        EmptyView() // Modals handled separately
                    }
                }
                .sheet(item: $coordinator.modalRoute) { route in
                    switch route {
                    case .modal:
                        ModalView()
                            .presentationDetents([ .height(200), .height(400), .height(600),.height(800)])
                            .environmentObject(coordinator)
                    default:
                        EmptyView()
                    }
                }
        }
        .environmentObject(coordinator)
    }
}

// MARK: - Home View
struct HomeView: View {
    @EnvironmentObject var coordinator: AppCoordinator

    var body: some View {
        VStack(spacing: 20) {
            Text("Home Screen")
                .font(.largeTitle)

            Button("Go to Profile") {
                coordinator.navigate(to: .profile)
            }

            Button("Go to Settings") {
                coordinator.navigate(to: .settings)
            }

            Button("Go to Detail with Info") {
                coordinator.navigate(to: .detail("Some Information"))
            }

            Button("Present Modal") {
                coordinator.presentModal(route: .modal)
            }
        }
        .navigationTitle("Home")
    }
}

// MARK: - Profile View
struct ProfileView: View {
    @EnvironmentObject var coordinator: AppCoordinator

    var body: some View {
        VStack(spacing: 20) {
            Text("Profile Screen")
                .font(.largeTitle)

            Button("Go Back") {
                coordinator.goBack()
            }

            Button("Reset to Root") {
                coordinator.resetToRoot()
            }

            Button("Present Modal") {
                coordinator.presentModal(route: .modal)
            }
        }
        .navigationTitle("Profile")
    }
}

// MARK: - Settings View
struct SettingsView: View {
    @EnvironmentObject var coordinator: AppCoordinator

    var body: some View {
        VStack(spacing: 20) {
            Text("Settings Screen")
                .font(.largeTitle)

            Button("Go Back") {
                coordinator.goBack()
            }

            Button("Reset to Root") {
                coordinator.resetToRoot()
            }

            Button("Present Modal") {
                coordinator.presentModal(route: .modal)
            }
        }
        .navigationTitle("Settings")
    }
}

// MARK: - Detail View
struct DetailView: View {
    let info: String

    @EnvironmentObject var coordinator: AppCoordinator

    var body: some View {
        VStack(spacing: 20) {
            Text("Detail Screen")
                .font(.largeTitle)
            Text("Info: \(info)")

            Button("Go Back") {
                coordinator.goBack()
            }

            Button("Reset to Root") {
                coordinator.resetToRoot()
            }

            Button("Present Modal") {
                coordinator.presentModal(route: .modal)
            }
        }
        .navigationTitle("Detail")
    }
}

// MARK: - Modal View
struct ModalView: View {
    @EnvironmentObject var coordinator: AppCoordinator

    var body: some View {
        VStack(spacing: 20) {
            Text("Modal Screen")
                .font(.largeTitle)

            Button("Dismiss Modal") {
                coordinator.dismissModal()
            }
        }
        .padding()
    }
}

// MARK: - Preview
struct AppCoordinator_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
