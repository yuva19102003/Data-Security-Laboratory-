Great! Here's how you can set up your Git remote URL using the `GITHUB_TOKEN` environment variable for your repository:

1. **Navigate to Your Local Repository:**
   ```sh
   cd /path/to/your/portfolio
   ```

2. **Set the Remote URL with the Token Environment Variable:**
   ```sh
   git remote set-url origin https://$GITHUB_TOKEN@github.com/yuva19102003/portfolio.git
   ```

3. **Push Your Code:**
   Assuming you want to push to the `main` branch, use:
   ```sh
   git push origin main
   ```

Here's the full set of commands:

```sh
cd /path/to/your/portfolio
git remote set-url origin https://$GITHUB_TOKEN@github.com/yuva19102003/portfolio.git
git push origin main
```

This will use the token stored in the `GITHUB_TOKEN` environment variable for authentication when pushing to your GitHub repository.
