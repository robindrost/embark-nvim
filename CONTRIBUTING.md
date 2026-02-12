# Contributing to Embark Neovim

Thank you for considering contributing to Embark Neovim! 🎉

## How to Contribute

### Reporting Issues

If you find a bug or have a feature request:

1. Check if the issue already exists
2. Create a new issue with a clear title and description
3. Include screenshots if applicable
4. Mention your Neovim version (`:version`)

### Submitting Changes

1. Fork the repository
2. Create a new branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Test your changes thoroughly
5. Commit with clear messages (`git commit -m 'Add amazing feature'`)
6. Push to your fork (`git push origin feature/amazing-feature`)
7. Open a Pull Request

### Code Style

- Use 2 spaces for indentation in Lua files
- Follow existing code patterns
- Add comments for complex logic
- Update documentation if needed

### Testing

Before submitting:

1. Test with transparent and non-transparent backgrounds
2. Verify plugin integrations work
3. Check colors in different file types
4. Test with `:checkhealth`

### Adding Plugin Support

To add support for a new plugin:

1. Research the plugin's highlight groups
2. Add highlights to `lua/embark/highlights.lua`
3. Test the integration
4. Update README.md plugin support section
5. Add examples if applicable

## Questions?

Feel free to open an issue for questions or discussions!

## Code of Conduct

Be respectful and constructive. We're all here to make great software together.
