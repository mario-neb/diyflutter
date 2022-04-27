abstract class CredentialsRepository {
  Future<void> save({required String email, required String password});

  Future<String?> getEmail();

  Future<String?> getPassword();

  Future<String?> checkIfDocumentSent();

  Future<void> saveDocumentsSentStatus({required String documentStatus});

  Future<void> clear();
}
