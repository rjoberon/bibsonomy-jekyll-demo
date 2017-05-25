---
title: Demo showing BibSonomy integration into Jekyll
---

## Demo showing BibSonomy integration into Jekyll

### Instructions

After cloning the project and changing into its directory, the
following should build a running 

1. Install dependencies:
```
gem install bibsonomy github-pages citeproc-ruby
```

2. Add BibSonomy user name and API key to [_config.yml](_config.yml):
```
bibsonomy_user: yourusername
bibsonomy_apikey: yourapikey
```

3. Adapt the user name in `{% bibsonomy yourusername myown 3 %}` below to your user name.

4. Run Jekyll:
```
jekyll build
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

{% bibsonomy yourusername myown 3 %}



