# Run this example by adding <%= javascript_pack_tag 'hello_coffee' %> to the head of your layout file,
# like app/views/layouts/application.html.erb.

console.log 'Hello world from coffeescript'

$('.js-project')
    .on 'cocoon:before-insert', (e, task_to_be_added) ->
      console.log('before insert')
      task_to_be_added.fadeIn('slow')
    .on 'cocoon:after-insert', (e, added_task) ->
      console.log('after insert')
      added_task.css("background","red")
    .on 'cocoon:before-remove', (e, task_to_be_removed) ->
      console.log('before remove')
      task_to_be_removed.fadeOut('slow')
    .on 'cocoon:after-remove', (e, removed_task) ->
      console.log('after remove')