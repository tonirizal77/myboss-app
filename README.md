# MyBoss App

Aplikasi mobile Flutter untuk MyBoss, dibangun dari `flutter_app_template` (clean architecture) dengan tema/branding yang mengambil dari `mobile_app_core` (branch `mybos-core`).

> Catatan: konten bisnis (copy, assets, endpoint) saat ini masih placeholder dari `hayo_app` sebagai starter — ganti sesuai kebutuhan produk MyBoss.

## Arsitektur

Project mengikuti clean architecture dengan pemisahan per-feature:

```
lib/
├── core_feat/          # Infrastruktur inti aplikasi
│   ├── network/        # Setup Dio, interceptor, API client
│   ├── navigation/     # Routing (go_router)
│   ├── controller/     # Shared bloc/cubit controller
│   ├── shared/         # Widget & util yang dipakai lintas fitur
│   ├── support/        # Helper pendukung
│   ├── template/       # Template/layout dasar
│   └── translations/   # Setup easy_localization
└── features/           # Fitur-fitur aplikasi (masing-masing punya data/domain/presenter)
    ├── auth/
    ├── home/
    ├── account/
    ├── menu/
    ├── order/
    ├── stores/
    ├── verifications/
    └── global/
```

Setiap fitur mengikuti pola `data` (repository/datasource) → `domain` (usecase/entity) → `presenter` (bloc/cubit + UI).

## Tech Stack

- **State management**: `flutter_bloc` + `hydrated_bloc`
- **DI**: `get_it`
- **Networking**: `dio` + `dio_smart_retry`, `socket_io_client` untuk realtime
- **Routing**: `go_router`
- **Codegen**: `freezed`, `json_serializable`, `envied` (env var typed access), `build_runner`
- **Lainnya**: `flutter_map` (peta), `geolocator`, `flutter_local_notifications`, `webview_flutter`, `flutter_html`, `easy_localization`

## Environment & Konfigurasi

Konfigurasi sensitif (API base URL, client secret, socket URL, dll) di-load lewat `envied` dari file `.env`. Salin dari template:

```bash
cp .env.dummy .env
```

Lalu isi value sesuai environment (staging/prod/live) yang dituju. **Jangan commit file `.env`.**

## Flavor

Aplikasi punya 3 flavor Android (`android/app/build.gradle.kts`):

| Flavor    | Application ID Suffix | Keterangan       |
|-----------|------------------------|------------------|
| `staging` | `.staging`             | Environment testing/QA |
| `prod`    | `.prod`                | Environment production internal |
| `live`    | -                      | Rilis ke store   |

Contoh menjalankan/build per flavor:

```bash
flutter run --flavor staging
flutter build apk --flavor staging --debug
flutter build appbundle --flavor live --release
```

## Setup Awal

1. Pastikan Flutter SDK sudah terpasang (lihat `environment.sdk` di `pubspec.yaml` untuk versi Dart minimum).
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Siapkan file `.env` (lihat bagian **Environment & Konfigurasi**).
4. Generate kode (freezed/json_serializable/envied):
   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```
5. Jalankan aplikasi:
   ```bash
   flutter run --flavor staging
   ```

## Getting Started (Flutter)

Referensi umum bila baru pertama kali menggunakan Flutter:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)
