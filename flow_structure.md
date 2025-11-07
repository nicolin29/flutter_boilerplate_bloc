[UI - LoginForm/LoginPage]
│
▼
[AuthCubit] ──> calls LoginUseCase
│
▼
[LoginUseCase] ──> calls AuthRepository
│
▼
[AuthRepository] ──> calls AuthService
│
▼
[AuthService] ──> Dio.post(ApiEndpoints.login)
│
▼
[API Response] (JSON) → ResponseModel<UserModel>
│
▼
[AuthRepository] maps ResponseModel → UserModel, saves token
│
▼
[LoginUseCase] returns UserModel
│
▼
[AuthCubit] updates state → UI
