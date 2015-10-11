# Poller server

Simply, simple polls.

## tl;dr - Single click deploy

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

Then view your result at `show_poll?question=your-question-id`.

## API

If you don't want to implement your own client implementation, see [buren/poller](https://github.com/buren/poller).

__Submit__:

_Note_: Make sure you send `GET` requests.

Poll answer
```
/poll?question=weather&answer=Love+it
```

Point answer
```
/poll?points=true&question=person&x=Joe+Bloggs&y=32
```

__Result__:

Poll result
```
/result?question=weather
```

Points result
```
/result?points=true&question=person
```

## Development - Getting Started

After you have cloned this repo, run this setup script to set up your machine
with the necessary dependencies to run and test this app:

    % ./bin/setup

It assumes you have a machine equipped with Ruby, Postgres, etc. If not, set up
your machine with [this script].

[this script]: https://github.com/thoughtbot/laptop

After setting up, you can run the application using [foreman]:

    % foreman start

If you don't have `foreman`, see [Foreman's install instructions][foreman]. It
is [purposefully excluded from the project's `Gemfile`][exclude].

[foreman]: https://github.com/ddollar/foreman
[exclude]: https://github.com/ddollar/foreman/pull/437#issuecomment-41110407

You can also deploy this app to Heroku by running

```bash
% heroku create your-name    # Create app
% git push heroku master     # Deploy app
% heroku run rake db:migrate # Migrate database
```
