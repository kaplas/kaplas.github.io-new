# Personal homepage of Jouni Kaplas

[www.kaplas.net](http://www.kaplas.net/) / www.kaplas.fi

## Local development

```
docker build -t homepage . && docker run -it --rm --volume="$PWD":/usr/src/app -p 4000:4000 --name homepage-run homepage
```

Site will be accessible at http://localhost:4000

## Generating new `Gemfile.lock`

```
docker run --rm -v "$PWD":/usr/src/app -w /usr/src/app ruby:2.2 bundle install
```

## 

## Links

* [Backlog @ Trello](https://trello.com/b/WrehV4vP/kotisivu-blogi) _(private)_


## License

All content of this homepage/repository (page texts, blog posts, photographs, etc.) are licensed with the _Creative Commons Attribution-ShareAlike 4.0 International License_ unless otherwise stated. To understand what it means

* [Check out the human readable summary of the license](http://creativecommons.org/licenses/by-sa/4.0/) or
* [Read the whole freaking license text](/LICENSE-CC-BY-SA-4)

The blog theme on the other hand is based on [the Poole theme for Jekyll](https://github.com/poole/poole), which is _MIT Licensed_. This slightly-modified theme of mine follows the very same license.

* [Read the not-so-freaking license text](/LICENSE-MIT)
