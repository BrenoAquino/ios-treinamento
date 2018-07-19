// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// swiftlint:disable explicit_type_interface identifier_name line_length nesting type_body_length type_name
internal enum L10n {

  internal enum App {
    /// Agenda
    internal static let title = L10n.tr("Localizable", "app.title")
  }

  internal enum Contatos {
    /// Contatos
    internal static let title = L10n.tr("Localizable", "contatos.title")
  }

  internal enum Login {
    /// Cadastrar
    internal static let cadastrar = L10n.tr("Localizable", "login.cadastrar")
    /// Email
    internal static let email = L10n.tr("Localizable", "login.email")
    /// Login
    internal static let entrar = L10n.tr("Localizable", "login.entrar")
    /// Senha
    internal static let senha = L10n.tr("Localizable", "login.senha")
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length nesting type_body_length type_name

extension L10n {
  fileprivate static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = NSLocalizedString(key, tableName: table, bundle: Bundle(for: BundleToken.self), comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

private final class BundleToken {}
