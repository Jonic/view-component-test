# View Component Test

Testing out the [Github's view_component Gem](https://github.com/github/view_component) on a dummy Rails app that implements a tiny portion of one of our sites.

There are three locales: `en`, `fr`, and `ja`. The default is `en`.

The routes for each are:

- `/`
- `/cards`

The root implements a non-localised "Hello World" Component. Nothing interesting there.

The interesting bit is in `app/views/cards/index.html.erb`, which in turn uses several components in the `app/components` directory. That's where all the clever bits are.

I've written a few tests to see what they're like, but haven't taken it too far because I wanted to get the Components working first.
