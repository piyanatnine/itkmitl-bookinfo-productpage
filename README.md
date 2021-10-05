# How to run product page

## Prerequisite

* Python 3.8

```bash
pip install -r requirements.txt
python productpage.py 9080
```

## How to run with Docker

```bash
# Build Docker Image for productpage service
docker build -t productpage .

# Run productpage service on port 8083
docker run -d --name productpage -p 8083:9080 /
--link details:details -e "DETAILS_HOSTNAME=http://details:9080" /
--link reviews:reviews -e "REVIEWS_HOSTNAME=http://reviews:9080" /
--link ratings:ratings -e "RATINGS_HOSTNAME=http://ratings:8080" productpage
```

* Test with path `/health`

## How to run with Docker Compose

```bash
docker-compose up
```