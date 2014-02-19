# The DocPad Configuration File
# It is simply a CoffeeScript Object which is parsed by CSON
docpadConfig =

  # Template Data
  # =============
  # These are variables that will be accessible via our templates
  # To access one of these within our templates, refer to the FAQ: https://github.com/bevry/docpad/wiki/FAQ

  templateData:

    # Specify some site properties
    site:
      # The production url of our website
      url: "http://test.rdaregistry.info"

      # The default title of our website
      title: "RDA Registry"

      # The website description (for SEO)
      description: """
        This is the technical documentation for the Resource Description and Access (RDA) published vocabularies and element set.
        """

      # The website keywords (for SEO) separated by commas
      keywords: """
        RDA, vocabularies, documentation, registry
        """

      # The website author's name
      author: "Jon Phipps"

      # The website author's email
      email: "jonphipps+rdaregistry@gmail.com"

      # Your company's name
      copyright: "© American Library Association"


    # Helper Functions
    # ----------------

    # Get the prepared site/document title
    # Often we would like to specify particular formatting to our page's title
    # we can apply that formatting here
    getPreparedTitle: ->
      # if we have a document title, then we should use that and suffix the site's title onto it
      if @document.title
        "#{@document.title} | #{@site.title}"
      # if our document does not have it's own title, then we should just use the site's title
      else
        @site.title

    # Get the prepared site/document description
    getPreparedDescription: ->
      # if we have a document description, then we should use that, otherwise use the site's description
      @document.description or @site.description

    # Get the prepared site/document keywords
    getPreparedKeywords: ->
      # Merge the document keywords with the site keywords
      @site.keywords.concat(@document.keywords or []).join(', ')


  # Collections
  # ===========
  # These are special collections that our website makes available to us

  collections:
    # For instance, this one will fetch in all documents that have pageOrder set within their meta data
    pages: (database) ->
      database.findAllLive({pageOrder: $exists: true}, [pageOrder:1,title:1])

    # This one, will fetch in all documents that will be outputted to the posts directory
    posts: (database) ->
      database.findAllLive({relativeOutDirPath:'posts'},[date:-1])

    # This one, will fetch in all documents that will be outputted to the posts directory
    elements: (database) ->
      database.findAllLive({relativeOutDirPath:'Elements'},[filename:1])

# =================================
# Server Configuration

# Port
# Use to change the port that DocPad listens to
# By default we will detect the appropriate port number for our environment
# if no environment port number is detected we will use 9778 as the port number
# Checked environment variables are:
# - PORT - Heroku, Nodejitsu, Custom
# - VCAP_APP_PORT - AppFog
# - VMC_APP_PORT - CloudFoundry
  port: 9779  # default

  # DocPad Events
  # =============

  # Here we can define handlers for events that DocPad fires
  # You can find a full listing of events on the DocPad Wiki
  events:

    # Server Extend
    # Used to add our own custom routes to the server before the docpad routes are added
    serverExtend: (opts) ->
      # Extract the server from the options
      {server} = opts
      docpad = @docpad

      # As we are now running in an event,
      # ensure we are using the latest copy of the docpad configuraiton
      # and fetch our urls from it
      latestConfig = docpad.getConfig()
      oldUrls = latestConfig.templateData.site.oldUrls or []
      newUrl = latestConfig.templateData.site.url

      # Redirect any requests accessing one of our sites oldUrls to the new site url
      server.use (req,res,next) ->
        if req.headers.host in oldUrls
          res.redirect 301, newUrl+req.url
        else
          next()


# Export our DocPad Configuration
module.exports = docpadConfig
