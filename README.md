# AxiomRead

AxiomRead is a multi-component application consisting of a Rails backend, a Go background service, a Python file processor, and a Flutter front-end application. This README provides instructions on how to set up and run the entire application.

## Components

1. **Rails Backend**: Provides the main application logic and serves the web interface.
2. **Go Background Service**: A background service running in Go.
3. **Python File Processor**: A script for processing PDF files.
4. **Flutter Front-End**: An Android application built with Flutter.

## Prerequisites

- Ruby (version 3.3.4 or compatible)
- Rails (version 6.0 or compatible)
- PostgreSQL
- Go
- Python (version 3.6 or higher)
- Flutter

## Setup Instructions

### 1. Rails Backend

#### Install Dependencies

Navigate to the root directory of the Rails application and install the necessary gems:

```bash
bundle install
```

#### Set Up the Database

Create and migrate the database:

```bash
bundle exec rails db:create
bundle exec rails db:migrate
```

#### Start the Rails Server

Start the Rails server to run the backend:

```bash
bundle exec rails server
```

The application will be accessible at `http://localhost:3000`.

### 2. Go Background Service

Navigate to the `background_service` directory and run the Go service:

```bash
cd background_service
go run main.go
```

The background service will be accessible at `http://localhost:8080/service`.

### 3. Python File Processor

Navigate to the `file_processor` directory and run the Python script:

```bash
cd file_processor
python processor.py
```

### 4. Flutter Front-End

Navigate to the `android_app` directory and run the Flutter app:

```bash
cd android_app
flutter run
```

This will launch the Flutter application on your connected device or emulator.

## Summary of Commands

```bash
# Fix typo in directory name (if necessary)
mv config/enviorments config/environments

# Install the gems
bundle install

# Create and migrate the database
bundle exec rails db:create
bundle exec rails db:migrate

# Start the Rails server
bundle exec rails server

# Run the background service
cd background_service
go run main.go

# Run the file processor
cd file_processor
python processor.py

# Run the Flutter application
cd android_app
flutter run
```

## Additional Configuration Files (Optional)

### `config/cable.yml`

```yaml
development:
  adapter: async

test:
  adapter: async

production:
  adapter: redis
  url: redis://localhost:6379/1
  channel_prefix: axiom_read_production
```

### `config/webpacker.yml`

```yaml
default: &default
  source_path: app/javascript
  source_entry_path: packs
  public_root_path: public
  public_output_path: packs
  cache_path: tmp/cache/webpacker
  webpack_compile_output: true
  extract_css: false
  static_assets_extensions:
    - .html
    - .erb
    - .haml
    - .slim
    - .md
    - .json
    - .map
    - .svg
    - .eot
    - .ttf
    - .woff
    - .woff2
    - .png
    - .jpg
    - .jpeg
    - .gif

development:
  <<: *default
  compile: true

test:
  <<: *default
  compile: true

production:
  <<: *default
  compile: false
  extract_css: true
  static_assets_extensions:
    - .html
    - .erb
    - .haml
    - .slim
    - .md
    - .json
    - .map
    - .svg
    - .eot
    - .ttf
    - .woff
    - .woff2
    - .png
    - .jpg
    - .jpeg
    - .gif
```

## Contact

For any questions or support, please contact [the-real-kodoninja](https://github.com/the-real-kodoninja).
