### .gitlab-ci.yml
```
# Select image from https://hub.docker.com
image: technikh/gitlab-ci-sculpin:php7.4-node17

# These folders are cached between builds
cache:
  paths:
    - vendor/
    - node_modules/

before_script:
  - yarn --version
  - composer -V
  - composer install
  - yarn install

pages:
  script:
    - composer publish
    - mv output_prod public
  artifacts:
    paths:
      - public
  rules:
    - if: $CI_COMMIT_BRANCH == $CI_DEFAULT_BRANCH
```
### composer.json
```
    "scripts": {
        "publish": [
            "yarn encore dev || ( echo \"Could not generate Webpack assets\" && exit )",
            "sculpin generate --env=prod || ( echo \"Could not generate the site\" && exit )"
        ]
    }

```
