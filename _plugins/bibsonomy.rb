# coding: utf-8
require 'time'
require 'bibsonomy/csl'

module Jekyll

  class BibSonomyPostList < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      parts = text.split(/\s+/)
      @user = parts[0]
      # TODO: support multiple tags
      @tag = parts[1]
      @count = Integer(parts[2])
    end
    
    def render(context)
      site = context.registers[:site]

      # user name and API key for BibSonomy
      user_name = site.config['bibsonomy_user']
      api_key = site.config['bibsonomy_apikey']
      csl = BibSonomy::CSL.new(user_name, api_key)

      # target directory for PDF documents
      pdf_dir = site.config['bibsonomy_document_directory']
      csl.pdf_dir = pdf_dir
      
      # CSL style for rendering
      style = site.config['bibsonomy_style']
      csl.style = style

      html = csl.render(@user, [@tag], @count)

      # set date to now
      context.registers[:page]["date"] = Time.new
      
      return html
    end
  end

end

Liquid::Template.register_tag('bibsonomy', Jekyll::BibSonomyPostList)
