# Ruby Security - Docker

Docker image for Ruby security tools

## Usage

```
# Build Docker image
make build

# Running Bundler-Audit
cd /path/to/app
docker run -v $PWD/.:/app rubysec:0.1.0 /bin/bash -c 'bundle-audit update && bundle-audit'

# Running Brakeman
cd /path/to/app
docker run -v $PWD/.:/app rubysec:0.1.0 brakeman

# Shell access
cd /path/to/app
docker run -ti -v $PWD/.:/app rubysec:0.1.0
```
