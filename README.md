# Heroku Lerna Storybook Buildpack

Based on:
- [heroku-buildpack-storybook](https://github.com/Root-App/heroku-buildpack-storybook)
- [heroku-buildpack-monorepo](https://github.com/lstoll/heroku-buildpack-monorepo)

# Usage
Designed for a lerna monorepo with the following project structure:
```
|-- root/
    |-- project0/
        |-- .storybook/
            |-- config.ts
            |-- webpack.config.js
        |-- package.json
    |-- project1/
        --- package.json
    |-- lerna.json
```
In this example, if we wished to deploy the storybook for `project0`, we would set the config var `APP_BASE` in Heroku to `project0`.