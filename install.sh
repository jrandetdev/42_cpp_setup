curl -o ~/setup-cpp.sh https://raw.githubusercontent.com/jrandetdev/setup_42_cpp/main/setup-cpp.sh
chmod +x ~/setup-cpp.sh

echo 'alias cpp-setup="~/setup-cpp.sh"' >> ~/.zshrc 2>/dev/null
echo 'alias cpp-setup="~/setup-cpp.sh"' >> ~/.bashrc 2>/dev/null

echo "✅ Installation complete!"
echo ""
echo "Usage: cpp-setup <module> <exercises>"
echo "Example: cpp-setup 5 6"
echo ""
echo "💡 Restart your terminal or run 'source ~/.zshrc' to use the command"
