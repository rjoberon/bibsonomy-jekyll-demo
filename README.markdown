---
title: Demo showing BibSonomy integration into Jekyll
---

## Demo showing BibSonomy integration into Jekyll

This project contains a [Jekyll](http://jekyllrb.com/) plugin that
shows how to use the
[bibsonomy-ruby](https://github.com/rjoberon/bibsonomy-ruby) module to
render posts from [BibSonomy](https://www.bibsonomy.org/) in a Jekyll
project.

### Instructions

After cloning the project and changing into its directory, the
following should build your site:

1. Install the dependencies:
```
bundle install
```

If you want to install the dependencies locally, then call

```
bundle install --path vendor/bundle
```

2. Add BibSonomy user name and API key to [_config.yml](_config.yml):
```
bibsonomy_user: yourusername
bibsonomy_apikey: yourapikey
```

3. Adapt the user name in `{% bibsonomy user yourusername myown 3 %}` below to your user name.

4. Run Jekyll:
```
bundle exec jekyll build
```

### Notes

- Ensure that the directory `pdf` configured in
  [_config.yml](config.yml) (variable `bibsonomy_document_directory`)
  exists since it is used to store the PDF files.
- Configuring an empty directory disables downloading of documents.
- Currently, `bibsonomy.rb` only supports getting the posts of a given
  user with a given tag. 
- [Help on seting up Jekyll](https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/)

### Publication List

The plugin supports a variable number of parameters: GROUPING NAME
TAG1 ... TAGN COUNT
- GROUPING specifies whether posts for a user ("user") or group
  ("group") shall be rendered.
- NAME specifies the name of the user or group.
- TAG1 ... TAGN is a variable number of tags the posts should have.
- COUNT is the maximal number of posts that shall be rendered.

#### User

{% bibsonomy user jaeschke myown 3 %}

#### Group

{% bibsonomy group iccs test 3 %}
