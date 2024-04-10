sealed class SignupState {
  const SignupState();
}

class InitialSignupState implements SignupState {
  const InitialSignupState();
}

class SigningInState implements SignupState {
  const SigningInState();
}

class SignedInState implements SignupState {
  const SignedInState();
}

class NotSignedInState implements SignupState {
  const NotSignedInState();
}

class SignupErrorState implements SignupState {
  final String message;

  const SignupErrorState(this.message);

  @override
  bool operator ==(covariant SignupErrorState other) {
    if (identical(this, other)) return true;

    return other.message == message;
  }

  @override
  int get hashCode => message.hashCode;
}
