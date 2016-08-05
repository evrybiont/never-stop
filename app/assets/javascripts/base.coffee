window.App ||= {}
window.Behavior ||= {}

Elemental.addNamespace(App)

$(document).ready ->
  Elemental.load document

  $(document).off('page:done').on(
    'page:done'
    (event, $target, status, url, data) ->
      tags = $(".stuff").find("[data-behavior]")

      if tags.length
        for tag in tags
          do ->
            new Behavior[tag.dataset.behavior]
    )
