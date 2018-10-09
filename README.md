# README

## Installation

Clone the project:
`git clone git@github.com:thomasoboyle/surf_app.git`

Set the ruby version via rbenv:
`rbenv local 2.3.0`

Install rails:

`gem install rails --version 5.0.2`

Install Postgres using Homebrew
`brew install postgresql`

And start the Postgres server:
`pstgres -D /usr/local/var/postgres`

Created and migrate the database:
`rake db:create`
`rake db:migrate`

Install the gems:
`gem install bundler`

## Specs

The surf_app currently users Minitest... because it works.
To run the entire test suit:
`bin/rails test`

To run a specific file:
`bin/rails test spec/foo/bar`
