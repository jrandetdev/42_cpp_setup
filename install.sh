curl -o ~/setup-cpp.sh https://raw.githubusercontent.com/jrandetdev/setup_42_cpp/main/setup-cpp.sh
chmod +x ~/setup-cpp.sh

echo 'alias 42_cpp_setup="~/42_cpp_setup.sh"' >> ~/.zshrc 2>/dev/null
echo 'alias 42_cpp_setup="~/42_cpp_setup.sh"' >> ~/.bashrc 2>/dev/null

echo "✅ Installation complete!"
echo ""
echo "Usage: 42_cpp_setup <module> <exercises>"
echo "Example: 42_cpp_setup 5 6"
echo ""
echo "💡 Restart your terminal or run 'source ~/.zshrc' to use the command"
