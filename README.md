# productmodulo.github.io

Source for https://productmodulo.github.io, built with [Astro](https://astro.build) and the [Fuwari](https://github.com/saicaca/fuwari) theme.

## Local development

```sh
pnpm install
pnpm dev        # http://localhost:4321
pnpm build      # outputs to dist/
```

## Writing a post

1. Copy a template from `templates/` (`competitive-programming.md` or `notes.md`) into `src/content/posts/` (e.g. `src/content/posts/my-post.md`).
2. Fill in the front matter and sections. Set `draft: false` to publish.
3. Push to `main`; GitHub Actions builds and deploys the site.

Math is rendered with KaTeX: `$inline$` and `$$display$$`.

## License

Theme code: MIT (see `LICENSE`). Post content: CC BY-NC-SA 4.0.
