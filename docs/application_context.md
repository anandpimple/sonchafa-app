# Sonchafa application context

Sonchafa is a private Flutter companion for a sari business. It will bring inventory, sales, partner ledgers, exhibitions and Google Drive JSON backup into one offline-first app.

## Product principles

- Work offline first; Hive is the on-device source of truth.
- Keep data portable: future backup and restore use documented JSON formats.
- Make high-frequency work quick on a phone.
- Use a calm Material 3 interface, inspired by Sonchafa's saffron-gold palette.

## Architecture

Feature folders own their presentation, application and data layers. Shared services live in `lib/core`, while `lib/app` owns app-wide composition. Riverpod supplies UI state and dependencies. Hive stores data locally; feature repositories will own their Hive boxes and adapters.

## Current scope

The foundation supplies app theming, navigation, a dashboard shell, an inventory entry point, Hive startup and Riverpod composition. The next sprint implements inventory CRUD, ID generation and persistence.
